#include "res://addons/lygia_godot/point.glsl"
#include "res://addons/lygia_godot/pointEvaluate.glsl"
#include "res://addons/lygia_godot/directional.glsl"
#include "res://addons/lygia_godot/directionalEvaluate.glsl"
#include "res://addons/lygia_godot/material.glsl"

#ifndef FNC_LIGHT_RESOLVE
#define FNC_LIGHT_RESOLVE

void lightResolve(LightPoint L, Material mat, inout ShadingData shadingData) {
    lightPointEvaluate(L, mat, shadingData);
}


void lightResolve(LightDirectional L, Material mat, inout ShadingData shadingData) {
    lightDirectionalEvaluate(L, mat, shadingData);
}

#endif