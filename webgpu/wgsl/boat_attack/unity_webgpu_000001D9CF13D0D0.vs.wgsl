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

@group(1) @binding(2) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(4) var<uniform> x_37 : UnityPerDraw;

var<private> u_xlat0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_116 : LightShadows;

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

@group(1) @binding(3) var<uniform> x_242 : AdditionalLights;

var<private> u_xlat22 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
  let x_31 : vec2<f32> = in_TEXCOORD1;
  let x_40 : vec4<f32> = x_37.unity_LightmapST;
  let x_44 : vec4<f32> = x_37.unity_LightmapST;
  vs_TEXCOORD1 = ((x_31 * vec2<f32>(x_40.x, x_40.y)) + vec2<f32>(x_44.z, x_44.w));
  let x_52 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = x_37.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_52.y, x_52.y, x_52.y) * vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_61 : vec4<f32> = x_37.unity_ObjectToWorld[0i];
  let x_63 : vec4<f32> = in_POSITION0;
  let x_66 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_63.x, x_63.x, x_63.x)) + x_66);
  let x_70 : vec4<f32> = x_37.unity_ObjectToWorld[2i];
  let x_72 : vec4<f32> = in_POSITION0;
  let x_75 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_70.x, x_70.y, x_70.z) * vec3<f32>(x_72.z, x_72.z, x_72.z)) + x_75);
  let x_77 : vec3<f32> = u_xlat0;
  let x_80 : vec4<f32> = x_37.unity_ObjectToWorld[3i];
  u_xlat0 = (x_77 + vec3<f32>(x_80.x, x_80.y, x_80.z));
  let x_85 : vec3<f32> = u_xlat0;
  let x_89 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_85.y, x_85.y, x_85.y, x_85.y) * x_89);
  let x_92 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_93 : vec3<f32> = u_xlat0;
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_92 * vec4<f32>(x_93.x, x_93.x, x_93.x, x_93.x)) + x_96);
  let x_99 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_100 : vec3<f32> = u_xlat0;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_99 * vec4<f32>(x_100.z, x_100.z, x_100.z, x_100.z)) + x_103);
  let x_105 : vec4<f32> = u_xlat1;
  let x_107 : vec4<f32> = x_17.unity_MatrixVP[3i];
  u_xlat1 = (x_105 + x_107);
  let x_110 : vec3<f32> = u_xlat0;
  let x_118 : vec4<f32> = x_116.x_MainLightWorldToShadow[0i][1i];
  u_xlat2 = (vec3<f32>(x_110.y, x_110.y, x_110.y) * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_122 : vec4<f32> = x_116.x_MainLightWorldToShadow[0i][0i];
  let x_124 : vec3<f32> = u_xlat0;
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_122.x, x_122.y, x_122.z) * vec3<f32>(x_124.x, x_124.x, x_124.x)) + x_127);
  let x_130 : vec4<f32> = x_116.x_MainLightWorldToShadow[0i][2i];
  let x_132 : vec3<f32> = u_xlat0;
  let x_135 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_130.x, x_130.y, x_130.z) * vec3<f32>(x_132.z, x_132.z, x_132.z)) + x_135);
  let x_139 : vec3<f32> = u_xlat2;
  let x_141 : vec4<f32> = x_116.x_MainLightWorldToShadow[0i][3i];
  let x_143 : vec3<f32> = (x_139 + vec3<f32>(x_141.x, x_141.y, x_141.z));
  let x_144 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec4<f32> = x_17.x_MainLightColor;
  let x_150 : vec4<f32> = x_37.unity_LightData;
  u_xlat2 = (vec3<f32>(x_147.x, x_147.y, x_147.z) * vec3<f32>(x_150.z, x_150.z, x_150.z));
  let x_157 : vec3<f32> = in_NORMAL0;
  let x_159 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat18 = dot(x_157, vec3<f32>(x_159.x, x_159.y, x_159.z));
  let x_162 : f32 = u_xlat18;
  u_xlat18 = clamp(x_162, 0.0f, 1.0f);
  let x_166 : f32 = u_xlat18;
  let x_168 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_166, x_166, x_166) * x_168);
  let x_173 : f32 = x_17.x_AdditionalLightsCount.x;
  let x_176 : f32 = x_37.unity_LightData.y;
  u_xlat18 = min(x_173, x_176);
  let x_180 : f32 = u_xlat18;
  u_xlati18 = i32(x_180);
  let x_183 : vec3<f32> = u_xlat2;
  u_xlat3 = x_183;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_191 : u32 = u_xlatu_loop_1;
    let x_192 : i32 = u_xlati18;
    if ((x_191 < bitcast<u32>(x_192))) {
    } else {
      break;
    }
    let x_198 : u32 = u_xlatu_loop_1;
    u_xlatu21 = (x_198 >> 2u);
    let x_201 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_201 & 3u));
    let x_206 : u32 = u_xlatu21;
    let x_209 : vec4<f32> = x_37.unity_LightIndices[bitcast<i32>(x_206)];
    let x_219 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_224 : vec4<u32> = indexable[x_219];
    u_xlat21 = dot(x_209, bitcast<vec4<f32>>(x_224));
    let x_228 : f32 = u_xlat21;
    u_xlati21 = i32(x_228);
    let x_231 : vec3<f32> = u_xlat0;
    let x_243 : i32 = u_xlati21;
    let x_245 : vec4<f32> = x_242.x_AdditionalLightsPosition[x_243];
    let x_248 : i32 = u_xlati21;
    let x_250 : vec4<f32> = x_242.x_AdditionalLightsPosition[x_248];
    u_xlat4 = ((-(x_231) * vec3<f32>(x_245.w, x_245.w, x_245.w)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
    let x_254 : vec3<f32> = u_xlat4;
    let x_255 : vec3<f32> = u_xlat4;
    u_xlat22 = dot(x_254, x_255);
    let x_257 : f32 = u_xlat22;
    u_xlat22 = max(x_257, 0.00006103515625f);
    let x_261 : f32 = u_xlat22;
    u_xlat5.x = inverseSqrt(x_261);
    let x_264 : vec3<f32> = u_xlat4;
    let x_265 : vec3<f32> = u_xlat5;
    u_xlat4 = (x_264 * vec3<f32>(x_265.x, x_265.x, x_265.x));
    let x_268 : f32 = u_xlat22;
    u_xlat5.x = (1.0f / x_268);
    let x_271 : f32 = u_xlat22;
    let x_272 : i32 = u_xlati21;
    let x_274 : f32 = x_242.x_AdditionalLightsAttenuation[x_272].x;
    u_xlat22 = (x_271 * x_274);
    let x_276 : f32 = u_xlat22;
    let x_278 : f32 = u_xlat22;
    u_xlat22 = ((-(x_276) * x_278) + 1.0f);
    let x_281 : f32 = u_xlat22;
    u_xlat22 = max(x_281, 0.0f);
    let x_283 : f32 = u_xlat22;
    let x_284 : f32 = u_xlat22;
    u_xlat22 = (x_283 * x_284);
    let x_286 : f32 = u_xlat22;
    let x_288 : f32 = u_xlat5.x;
    u_xlat22 = (x_286 * x_288);
    let x_290 : i32 = u_xlati21;
    let x_292 : vec4<f32> = x_242.x_AdditionalLightsSpotDir[x_290];
    let x_294 : vec3<f32> = u_xlat4;
    u_xlat5.x = dot(vec3<f32>(x_292.x, x_292.y, x_292.z), x_294);
    let x_298 : f32 = u_xlat5.x;
    let x_299 : i32 = u_xlati21;
    let x_301 : f32 = x_242.x_AdditionalLightsAttenuation[x_299].z;
    let x_303 : i32 = u_xlati21;
    let x_305 : f32 = x_242.x_AdditionalLightsAttenuation[x_303].w;
    u_xlat5.x = ((x_298 * x_301) + x_305);
    let x_309 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_309, 0.0f, 1.0f);
    let x_313 : f32 = u_xlat5.x;
    let x_315 : f32 = u_xlat5.x;
    u_xlat5.x = (x_313 * x_315);
    let x_318 : f32 = u_xlat22;
    let x_320 : f32 = u_xlat5.x;
    u_xlat22 = (x_318 * x_320);
    let x_322 : f32 = u_xlat22;
    let x_324 : i32 = u_xlati21;
    let x_326 : vec4<f32> = x_242.x_AdditionalLightsColor[x_324];
    u_xlat5 = (vec3<f32>(x_322, x_322, x_322) * vec3<f32>(x_326.x, x_326.y, x_326.z));
    let x_329 : vec3<f32> = in_NORMAL0;
    let x_330 : vec3<f32> = u_xlat4;
    u_xlat21 = dot(x_329, x_330);
    let x_332 : f32 = u_xlat21;
    u_xlat21 = clamp(x_332, 0.0f, 1.0f);
    let x_334 : vec3<f32> = u_xlat5;
    let x_335 : f32 = u_xlat21;
    let x_338 : vec3<f32> = u_xlat3;
    u_xlat3 = ((x_334 * vec3<f32>(x_335, x_335, x_335)) + x_338);

    continuing {
      let x_340 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_340 + bitcast<u32>(1i));
    }
  }
  let x_343 : vec3<f32> = u_xlat3;
  let x_344 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_347 : f32 = u_xlat1.z;
  let x_349 : f32 = x_17.x_ProjectionParams.y;
  u_xlat18 = (x_347 / x_349);
  let x_351 : f32 = u_xlat18;
  u_xlat18 = (-(x_351) + 1.0f);
  let x_354 : f32 = u_xlat18;
  let x_356 : f32 = x_17.x_ProjectionParams.z;
  u_xlat18 = (x_354 * x_356);
  let x_358 : f32 = u_xlat18;
  u_xlat18 = max(x_358, 0.0f);
  let x_360 : f32 = u_xlat18;
  let x_363 : f32 = x_17.unity_FogParams.x;
  vs_TEXCOORD3.w = (x_360 * x_363);
  let x_369 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_369;
  vs_TEXCOORD4.w = 0.0f;
  let x_372 : vec3<f32> = in_NORMAL0;
  let x_373 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_380 : vec4<f32> = u_xlat1;
  gl_Position = x_380;
  let x_383 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_383;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(2) in_TEXCOORD1_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(3) in_NORMAL0_param : vec3<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD4, vs_TEXCOORD3, vs_TEXCOORD5, gl_Position);
}


