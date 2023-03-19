#include "Game/gamePlayData.h"
#include "Game/BaseGameSection.h"
#include "Game/GameSystem.h"
#include "Game/MoviePlayer.h"
#include "Game/Navi.h"
#include "utilityU.h"
#include "PSGame/SceneInfo.h"
#include "og/Screen/PikminCounter.h"
namespace TwoPlayer
{
    bool useTwoPlayer = true;
	bool twoPlayerActive = true;
    int deadPlayer = 0;

    void initTwoPlayer() {
        // if (useTwoPlayer) {
        //     Game::playData->_20 |= 1;
        // }
        // else {
        //     Game::playData->_20 &= ~1;
        // }
    }

    // setModeInCutscene__9TwoPlayerFv
    void setModeInCutscene() {
        OSReport("toggle mode called ---------------------------------\n");
        if (useTwoPlayer) {
            
            OSReport("set player mode ---------------------------------\n");
            Game::BaseGameSection* section = Game::gameSystem->m_section;
            if (Game::naviMgr->getAliveCount() == 2) {
				TwoPlayer::twoPlayerActive = false;
                section->setPlayerMode(0);
                Game::moviePlayer->m_viewport     = sys->m_gfx->getViewport(0);
                Game::moviePlayer->m_actingCamera = section->m_olimarCamera;
            }
            else if (section->m_prevNaviIdx == 0) {
                section->setPlayerMode(1);
				TwoPlayer::twoPlayerActive = false;
                Game::moviePlayer->m_viewport     = sys->m_gfx->getViewport(1);
                Game::moviePlayer->m_actingCamera = section->m_louieCamera;
            } else if (section->m_prevNaviIdx == 1) {
				TwoPlayer::twoPlayerActive = false;
                section->setPlayerMode(0);
                Game::moviePlayer->m_viewport     = sys->m_gfx->getViewport(0);
                Game::moviePlayer->m_actingCamera = section->m_olimarCamera;
            }
			else {
				TwoPlayer::twoPlayerActive = false;
                section->setPlayerMode(0);
                Game::moviePlayer->m_viewport     = sys->m_gfx->getViewport(0);
                Game::moviePlayer->m_actingCamera = section->m_olimarCamera;
			}
        }
    }

    // setModeOutCutscene__9TwoPlayerFv
    void setModeOutCutscene() {
        Game::gameSystem->m_section->pmTogglePlayer();
    }
    // loadSound__9TwoPlayerFv
    void loadSound() {
        Game::naviMgr->createPSMDirectorUpdator();
    }

} // namespace TwoPlayer

namespace Game
{
    

void BaseGameSection::pmTogglePlayer()
{
    if (TwoPlayer::useTwoPlayer && naviMgr->getAliveCount() == 2) {
		TwoPlayer::twoPlayerActive = true;
        setPlayerMode(2);
        moviePlayer->m_viewport     = sys->m_gfx->getViewport(0);
        moviePlayer->m_actingCamera = m_olimarCamera;
    }
	else if (m_prevNaviIdx == 0) {
		TwoPlayer::twoPlayerActive = false;
		setPlayerMode(1);
		moviePlayer->m_viewport     = sys->m_gfx->getViewport(1);
		moviePlayer->m_actingCamera = m_louieCamera;
	} else if (m_prevNaviIdx == 1) {
		TwoPlayer::twoPlayerActive = false;
		setPlayerMode(0);
		moviePlayer->m_viewport     = sys->m_gfx->getViewport(0);
		moviePlayer->m_actingCamera = m_olimarCamera;
	}
	onTogglePlayer();
}

void BaseGameSection::setCamController()
{
	Navi* navis[2];

	navis[0] = naviMgr->getAt(0);
	navis[1] = naviMgr->getAt(1);

	switch (m_prevNaviIdx) {
	case 0: {
		PlayCamera* olimarCam        = m_olimarCamera;
		navis[0]->m_camera            = olimarCam;
		navis[0]->m_camera2           = olimarCam;
		Controller* olimarController = m_controllerP1;
        navis[0]->m_padinput       = olimarController;
        navis[0]->m_padinput2       = olimarController;
		navis[1]->disableController();
		moviePlayer->m_targetNavi   = navis[0];
		moviePlayer->m_viewport     = sys->m_gfx->getViewport(0);
		moviePlayer->m_actingCamera = m_olimarCamera;
		if (!gameSystem->isMultiplayerMode()) {
			PSSetCurCameraNo(0);
			//PSPlayerChangeToOrimer();
		}
		break;
	}
	case 1: {
		navis[0]->disableController();
		PlayCamera* louieCam        = m_louieCamera;
		navis[1]->m_camera           = louieCam;
		navis[1]->m_camera2          = louieCam;
		Controller* louieController = (TwoPlayer::useTwoPlayer) ? m_controllerP2 : m_controllerP1;
		navis[1]->m_padinput      = louieController;
		navis[1]->m_padinput2      = louieController;
        navis[0]->disableController();
		moviePlayer->m_targetNavi    = navis[1];
		moviePlayer->m_viewport      = sys->m_gfx->getViewport(1);
		moviePlayer->m_actingCamera  = m_louieCamera;
		if (!gameSystem->isMultiplayerMode()) {
			PSSetCurCameraNo(1);
			//PSPlayerChangeToLugie();
		}
		break;
	}
	case 2: {
		PlayCamera* olimarCam        = m_olimarCamera;
		navis[0]->m_camera            = olimarCam;
		navis[0]->m_camera2           = olimarCam;
		Controller* olimarController = m_controllerP1;
		navis[0]->m_padinput       = olimarController;
		navis[0]->m_padinput2       = olimarController;
		PlayCamera* louieCam         = m_louieCamera;
		navis[1]->m_camera            = louieCam;
		navis[1]->m_camera2           = louieCam;
		Controller* louieController  = m_controllerP2;
		navis[1]->m_padinput       = louieController;
		navis[1]->m_padinput2       = louieController;

		moviePlayer->m_targetNavi   = navis[0];
		moviePlayer->m_actingCamera = m_olimarCamera;
		if (gameSystem->m_mode == GSM_STORY_MODE) {
			PSSetCurCameraNo(0);
		}
		break;
	}
	}
	on_setCamController(m_prevNaviIdx);
}


} // namespace Game

#include "og/Screen/ScaleMgr.h"
#include "og/Screen/PikminCounter.h"
#include "og/Screen/ogScreen.h"
#include "og/Screen/callbackNodes.h"

namespace og
{
namespace Screen
{

void PikminCounter::setCallBackCommon(JKRArchive* arc, bool flag)
{
	og::Screen::setAlphaScreen(this);
	m_callBackCatchPiki = new og::Screen::CallBack_CatchPiki;
	m_callBackCatchPiki->init(this, 'piki', &m_dataNavi.m_nextThrowPiki, arc);
	addCallBack('piki', m_callBackCatchPiki);
	og::Screen::setCallBack_CounterRV(this, 'c_mr', 'c_mc', 'c_ml', &m_dataNavi.m_followPikis, 4, 3, 1, arc);
	m_isTotalPokoActive = flag;
}

void PikminCounter::setCallBackNoDay(JKRArchive* arc) {
	setCallBackCommon(arc, false);

	setCallBack_CounterRV(this, 'c_lr', 'c_lc', 'c_ll', &m_dataGame.m_mapPikminCount, 10, 3, 1, arc);
	CallBack_CounterRV* counter = setCallBack_CounterRV(this, 'c_s1', 'c_sr', 'c_sl', &m_dataGame.m_totalPikminCount, 10, 4, 1, arc);
	counter->m_scaleUpSoundID    = PSSE_SY_PIKI_INCREMENT;
	counter->m_scaleDownSoundID  = PSSE_SY_PIKI_DECREMENT;

	search('c_sc')->removeFromParent();
}

void PikminCounterCave::setCallBackNoDay(JKRArchive* arc) {
	setCallBackCommon(arc, false);

	CallBack_CounterRV* counter = setCallBack_CounterRV(this, 'c_lr', 'c_lc', 'c_ll', &m_dataGame.m_mapPikminCount, 10, 3, 1, arc);
	counter->m_scaleUpSoundID    = PSSE_SY_PIKI_INCREMENT;
	counter->m_scaleDownSoundID  = PSSE_SY_PIKI_DECREMENT;
}


} // namespace screen

} // namespace og
