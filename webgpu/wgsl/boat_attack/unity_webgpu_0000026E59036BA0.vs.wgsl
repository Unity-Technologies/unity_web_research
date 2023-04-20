diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(16) */
  x_MainLightColor : vec4<f32>,
  /* @offset(32) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(48) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(64) */
  unity_FogParams : vec4<f32>,
  /* @offset(80) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(144) */
  x_MainTex_ST : vec4<f32>,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
}

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_6,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_6,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_6,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_6,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_6,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_17 : VGlobals;

var<private> u_xlat0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_41 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_104 : LightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat18 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlati18 : i32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatu21 : u32;

var<private> u_xlati4 : i32;

var<private> u_xlat21 : f32;

var<private> u_xlati21 : i32;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_230 : AdditionalLights;

var<private> u_xlat22 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> u_xlatu20 : u32;

var<private> u_xlatb21 : bool;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_MainTex_ST;
  let x_26 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_34 : vec4<f32> = in_POSITION0;
  let x_45 : vec4<f32> = x_41.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_34.y, x_34.y, x_34.y) * vec3<f32>(x_45.x, x_45.y, x_45.z));
  let x_49 : vec4<f32> = x_41.unity_ObjectToWorld[0i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_49.x, x_49.y, x_49.z) * vec3<f32>(x_51.x, x_51.x, x_51.x)) + x_54);
  let x_58 : vec4<f32> = x_41.unity_ObjectToWorld[2i];
  let x_60 : vec4<f32> = in_POSITION0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_60.z, x_60.z, x_60.z)) + x_63);
  let x_65 : vec3<f32> = u_xlat0;
  let x_68 : vec4<f32> = x_41.unity_ObjectToWorld[3i];
  u_xlat0 = (x_65 + vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_73 : vec3<f32> = u_xlat0;
  let x_77 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_73.y, x_73.y, x_73.y, x_73.y) * x_77);
  let x_80 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_81 : vec3<f32> = u_xlat0;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_80 * vec4<f32>(x_81.x, x_81.x, x_81.x, x_81.x)) + x_84);
  let x_87 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_88 : vec3<f32> = u_xlat0;
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_87 * vec4<f32>(x_88.z, x_88.z, x_88.z, x_88.z)) + x_91);
  let x_93 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = x_17.unity_MatrixVP[3i];
  u_xlat1 = (x_93 + x_95);
  let x_98 : vec3<f32> = u_xlat0;
  let x_106 : vec4<f32> = x_104.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_98.y, x_98.y, x_98.y) * vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_110 : vec4<f32> = x_104.x_MainLightWorldToShadow[0i][0i];
  let x_112 : vec3<f32> = u_xlat0;
  let x_115 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_112.x, x_112.x, x_112.x)) + x_115);
  let x_118 : vec4<f32> = x_104.x_MainLightWorldToShadow[0i][2i];
  let x_120 : vec3<f32> = u_xlat0;
  let x_123 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_118.x, x_118.y, x_118.z) * vec3<f32>(x_120.z, x_120.z, x_120.z)) + x_123);
  let x_127 : vec3<f32> = u_xlat2;
  let x_129 : vec4<f32> = x_104.x_MainLightWorldToShadow[0i][3i];
  let x_131 : vec3<f32> = (x_127 + vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_132 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_135 : vec4<f32> = x_17.x_MainLightColor;
  let x_138 : vec4<f32> = x_41.unity_LightData;
  u_xlat2 = (vec3<f32>(x_135.x, x_135.y, x_135.z) * vec3<f32>(x_138.z, x_138.z, x_138.z));
  let x_145 : vec3<f32> = in_NORMAL0;
  let x_147 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat18 = dot(x_145, vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : f32 = u_xlat18;
  u_xlat18 = clamp(x_150, 0.0f, 1.0f);
  let x_154 : f32 = u_xlat18;
  let x_156 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_154, x_154, x_154) * x_156);
  let x_161 : f32 = x_17.x_AdditionalLightsCount.x;
  let x_164 : f32 = x_41.unity_LightData.y;
  u_xlat18 = min(x_161, x_164);
  let x_168 : f32 = u_xlat18;
  u_xlati18 = i32(x_168);
  let x_171 : vec3<f32> = u_xlat2;
  u_xlat3 = x_171;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_179 : u32 = u_xlatu_loop_1;
    let x_180 : i32 = u_xlati18;
    if ((x_179 < bitcast<u32>(x_180))) {
    } else {
      break;
    }
    let x_186 : u32 = u_xlatu_loop_1;
    u_xlatu21 = (x_186 >> 2u);
    let x_189 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_189 & 3u));
    let x_194 : u32 = u_xlatu21;
    let x_197 : vec4<f32> = x_41.unity_LightIndices[bitcast<i32>(x_194)];
    let x_207 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_212 : vec4<u32> = indexable[x_207];
    u_xlat21 = dot(x_197, bitcast<vec4<f32>>(x_212));
    let x_216 : f32 = u_xlat21;
    u_xlati21 = i32(x_216);
    let x_219 : vec3<f32> = u_xlat0;
    let x_231 : i32 = u_xlati21;
    let x_233 : vec4<f32> = x_230.x_AdditionalLightsPosition[x_231];
    let x_236 : i32 = u_xlati21;
    let x_238 : vec4<f32> = x_230.x_AdditionalLightsPosition[x_236];
    u_xlat4 = ((-(x_219) * vec3<f32>(x_233.w, x_233.w, x_233.w)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
    let x_242 : vec3<f32> = u_xlat4;
    let x_243 : vec3<f32> = u_xlat4;
    u_xlat22 = dot(x_242, x_243);
    let x_245 : f32 = u_xlat22;
    u_xlat22 = max(x_245, 0.00006103515625f);
    let x_249 : f32 = u_xlat22;
    u_xlat5.x = inverseSqrt(x_249);
    let x_252 : vec3<f32> = u_xlat4;
    let x_253 : vec3<f32> = u_xlat5;
    u_xlat4 = (x_252 * vec3<f32>(x_253.x, x_253.x, x_253.x));
    let x_256 : f32 = u_xlat22;
    u_xlat5.x = (1.0f / x_256);
    let x_259 : f32 = u_xlat22;
    let x_260 : i32 = u_xlati21;
    let x_262 : f32 = x_230.x_AdditionalLightsAttenuation[x_260].x;
    u_xlat22 = (x_259 * x_262);
    let x_264 : f32 = u_xlat22;
    let x_266 : f32 = u_xlat22;
    u_xlat22 = ((-(x_264) * x_266) + 1.0f);
    let x_269 : f32 = u_xlat22;
    u_xlat22 = max(x_269, 0.0f);
    let x_271 : f32 = u_xlat22;
    let x_272 : f32 = u_xlat22;
    u_xlat22 = (x_271 * x_272);
    let x_274 : f32 = u_xlat22;
    let x_276 : f32 = u_xlat5.x;
    u_xlat22 = (x_274 * x_276);
    let x_278 : i32 = u_xlati21;
    let x_280 : vec4<f32> = x_230.x_AdditionalLightsSpotDir[x_278];
    let x_282 : vec3<f32> = u_xlat4;
    u_xlat5.x = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), x_282);
    let x_286 : f32 = u_xlat5.x;
    let x_287 : i32 = u_xlati21;
    let x_289 : f32 = x_230.x_AdditionalLightsAttenuation[x_287].z;
    let x_291 : i32 = u_xlati21;
    let x_293 : f32 = x_230.x_AdditionalLightsAttenuation[x_291].w;
    u_xlat5.x = ((x_286 * x_289) + x_293);
    let x_297 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_297, 0.0f, 1.0f);
    let x_301 : f32 = u_xlat5.x;
    let x_303 : f32 = u_xlat5.x;
    u_xlat5.x = (x_301 * x_303);
    let x_306 : f32 = u_xlat22;
    let x_308 : f32 = u_xlat5.x;
    u_xlat22 = (x_306 * x_308);
    let x_310 : f32 = u_xlat22;
    let x_312 : i32 = u_xlati21;
    let x_314 : vec4<f32> = x_230.x_AdditionalLightsColor[x_312];
    u_xlat5 = (vec3<f32>(x_310, x_310, x_310) * vec3<f32>(x_314.x, x_314.y, x_314.z));
    let x_317 : vec3<f32> = in_NORMAL0;
    let x_318 : vec3<f32> = u_xlat4;
    u_xlat21 = dot(x_317, x_318);
    let x_320 : f32 = u_xlat21;
    u_xlat21 = clamp(x_320, 0.0f, 1.0f);
    let x_322 : vec3<f32> = u_xlat5;
    let x_323 : f32 = u_xlat21;
    let x_326 : vec3<f32> = u_xlat3;
    u_xlat3 = ((x_322 * vec3<f32>(x_323, x_323, x_323)) + x_326);

    continuing {
      let x_328 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_328 + bitcast<u32>(1i));
    }
  }
  let x_331 : vec3<f32> = u_xlat3;
  let x_332 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_335 : f32 = u_xlat1.z;
  let x_337 : f32 = x_17.x_ProjectionParams.y;
  u_xlat18 = (x_335 / x_337);
  let x_339 : f32 = u_xlat18;
  u_xlat18 = (-(x_339) + 1.0f);
  let x_342 : f32 = u_xlat18;
  let x_344 : f32 = x_17.x_ProjectionParams.z;
  u_xlat18 = (x_342 * x_344);
  let x_346 : f32 = u_xlat18;
  u_xlat18 = max(x_346, 0.0f);
  let x_348 : f32 = u_xlat18;
  let x_351 : f32 = x_17.unity_FogParams.x;
  vs_TEXCOORD3.w = (x_348 * x_351);
  let x_357 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_357;
  vs_TEXCOORD4.w = 0.0f;
  let x_360 : vec3<f32> = in_NORMAL0;
  let x_361 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_368 : vec4<f32> = u_xlat1;
  gl_Position = x_368;
  vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_373 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_373;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD5_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD4, vs_TEXCOORD3, vs_TEXCOORD5, gl_Position);
}


