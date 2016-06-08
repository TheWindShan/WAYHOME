#pragma once

#include "WHPublic.h"
#include "MapLayer.h"

#define MAP_LYR_Z	1

#define TAG_MAP			10
#define TAG_PLAYER		11

namespace wayhome{
	class GameLayer :public cocos2d::Layer
	{
		MapLayer* m_mapLayer;//��ͼ��
		Character *m_player;//��ɫ

		bool flag = true;
		bool extraFlag = false;
	protected:
		virtual bool onContactBegin(cocos2d::PhysicsContact& contact);//�Ӵ��ص�
		virtual void onContactSeperate(cocos2d::PhysicsContact& contact);//����ص�

		void initMap(std::string s);//��ʼ����ͼ��
		void initPlayer();//��ʼ����ɫ
		//void setPhyEdge();//��������߽�

		//void onUpdate(float dt);

	public:
		CREATE_FUNC(GameLayer);
		virtual bool init();

		Character *getPlayer(){ return m_player; }
		bool isExtraFlag(){ return extraFlag; }
		void restart();
		
		void handleInput(int cmd);//��������
		void handleEvent(int tag);//�����¼�

		void adjustCamera();//������ͷ
		void addNewSpriteAtPosition(Point p);
		void extraStage();

		bool isCollidable();
		
	};
}