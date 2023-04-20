diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(16) */
  x_MainLightColor : vec4<f32>,
  /* @offset(32) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(48) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(112) */
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

@group(1) @binding(2) var<uniform> x_109 : LightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat15 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlati15 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatu17 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat17 : f32;

var<private> u_xlati17 : i32;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_250 : AdditionalLights;

var<private> u_xlat18 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> u_xlatu16 : u32;

var<private> u_xlatb17 : bool;

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
  let x_76 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_73.y, x_73.y, x_73.y, x_73.y) * x_76);
  let x_79 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_80 : vec3<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_79 * vec4<f32>(x_80.x, x_80.x, x_80.x, x_80.x)) + x_83);
  let x_86 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_87 : vec3<f32> = u_xlat0;
  let x_90 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_86 * vec4<f32>(x_87.z, x_87.z, x_87.z, x_87.z)) + x_90);
  let x_97 : vec4<f32> = u_xlat1;
  let x_99 : vec4<f32> = x_17.unity_MatrixVP[3i];
  gl_Position = (x_97 + x_99);
  let x_103 : vec3<f32> = u_xlat0;
  let x_111 : vec4<f32> = x_109.x_MainLightWorldToShadow[0i][1i];
  let x_113 : vec3<f32> = (vec3<f32>(x_103.y, x_103.y, x_103.y) * vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_117 : vec4<f32> = x_109.x_MainLightWorldToShadow[0i][0i];
  let x_119 : vec3<f32> = u_xlat0;
  let x_122 : vec4<f32> = u_xlat1;
  let x_124 : vec3<f32> = ((vec3<f32>(x_117.x, x_117.y, x_117.z) * vec3<f32>(x_119.x, x_119.x, x_119.x)) + vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_125 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_128 : vec4<f32> = x_109.x_MainLightWorldToShadow[0i][2i];
  let x_130 : vec3<f32> = u_xlat0;
  let x_133 : vec4<f32> = u_xlat1;
  let x_135 : vec3<f32> = ((vec3<f32>(x_128.x, x_128.y, x_128.z) * vec3<f32>(x_130.z, x_130.z, x_130.z)) + vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_136 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_139 : vec4<f32> = u_xlat1;
  let x_142 : vec4<f32> = x_109.x_MainLightWorldToShadow[0i][3i];
  let x_144 : vec3<f32> = (vec3<f32>(x_139.x, x_139.y, x_139.z) + vec3<f32>(x_142.x, x_142.y, x_142.z));
  let x_145 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_148 : vec4<f32> = x_17.x_MainLightColor;
  let x_152 : vec4<f32> = x_41.unity_LightData;
  let x_154 : vec3<f32> = (vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_152.z, x_152.z, x_152.z));
  let x_155 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_161 : vec3<f32> = in_NORMAL0;
  let x_163 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat15 = dot(x_161, vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat15;
  u_xlat15 = clamp(x_166, 0.0f, 1.0f);
  let x_170 : f32 = u_xlat15;
  let x_172 : vec4<f32> = u_xlat1;
  let x_174 : vec3<f32> = (vec3<f32>(x_170, x_170, x_170) * vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_180 : f32 = x_17.x_AdditionalLightsCount.x;
  let x_182 : f32 = x_41.unity_LightData.y;
  u_xlat15 = min(x_180, x_182);
  let x_186 : f32 = u_xlat15;
  u_xlati15 = i32(x_186);
  let x_189 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_189.x, x_189.y, x_189.z);
  u_xlatu_loop_1 = 0u;
  loop {
    let x_198 : u32 = u_xlatu_loop_1;
    let x_199 : i32 = u_xlati15;
    if ((x_198 < bitcast<u32>(x_199))) {
    } else {
      break;
    }
    let x_205 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_205 >> 2u);
    let x_208 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_208 & 3u));
    let x_214 : u32 = u_xlatu17;
    let x_217 : vec4<f32> = x_41.unity_LightIndices[bitcast<i32>(x_214)];
    let x_227 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_232 : vec4<u32> = indexable[x_227];
    u_xlat17 = dot(x_217, bitcast<vec4<f32>>(x_232));
    let x_236 : f32 = u_xlat17;
    u_xlati17 = i32(x_236);
    let x_239 : vec3<f32> = u_xlat0;
    let x_251 : i32 = u_xlati17;
    let x_253 : vec4<f32> = x_250.x_AdditionalLightsPosition[x_251];
    let x_256 : i32 = u_xlati17;
    let x_258 : vec4<f32> = x_250.x_AdditionalLightsPosition[x_256];
    u_xlat3 = ((-(x_239) * vec3<f32>(x_253.w, x_253.w, x_253.w)) + vec3<f32>(x_258.x, x_258.y, x_258.z));
    let x_262 : vec3<f32> = u_xlat3;
    let x_263 : vec3<f32> = u_xlat3;
    u_xlat18 = dot(x_262, x_263);
    let x_265 : f32 = u_xlat18;
    u_xlat18 = max(x_265, 0.00006103515625f);
    let x_269 : f32 = u_xlat18;
    u_xlat4.x = inverseSqrt(x_269);
    let x_272 : vec3<f32> = u_xlat3;
    let x_273 : vec3<f32> = u_xlat4;
    u_xlat3 = (x_272 * vec3<f32>(x_273.x, x_273.x, x_273.x));
    let x_276 : f32 = u_xlat18;
    u_xlat4.x = (1.0f / x_276);
    let x_279 : f32 = u_xlat18;
    let x_280 : i32 = u_xlati17;
    let x_282 : f32 = x_250.x_AdditionalLightsAttenuation[x_280].x;
    u_xlat18 = (x_279 * x_282);
    let x_284 : f32 = u_xlat18;
    let x_286 : f32 = u_xlat18;
    u_xlat18 = ((-(x_284) * x_286) + 1.0f);
    let x_289 : f32 = u_xlat18;
    u_xlat18 = max(x_289, 0.0f);
    let x_291 : f32 = u_xlat18;
    let x_292 : f32 = u_xlat18;
    u_xlat18 = (x_291 * x_292);
    let x_294 : f32 = u_xlat18;
    let x_296 : f32 = u_xlat4.x;
    u_xlat18 = (x_294 * x_296);
    let x_298 : i32 = u_xlati17;
    let x_300 : vec4<f32> = x_250.x_AdditionalLightsSpotDir[x_298];
    let x_302 : vec3<f32> = u_xlat3;
    u_xlat4.x = dot(vec3<f32>(x_300.x, x_300.y, x_300.z), x_302);
    let x_306 : f32 = u_xlat4.x;
    let x_307 : i32 = u_xlati17;
    let x_309 : f32 = x_250.x_AdditionalLightsAttenuation[x_307].z;
    let x_311 : i32 = u_xlati17;
    let x_313 : f32 = x_250.x_AdditionalLightsAttenuation[x_311].w;
    u_xlat4.x = ((x_306 * x_309) + x_313);
    let x_317 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_317, 0.0f, 1.0f);
    let x_321 : f32 = u_xlat4.x;
    let x_323 : f32 = u_xlat4.x;
    u_xlat4.x = (x_321 * x_323);
    let x_326 : f32 = u_xlat18;
    let x_328 : f32 = u_xlat4.x;
    u_xlat18 = (x_326 * x_328);
    let x_330 : f32 = u_xlat18;
    let x_332 : i32 = u_xlati17;
    let x_334 : vec4<f32> = x_250.x_AdditionalLightsColor[x_332];
    u_xlat4 = (vec3<f32>(x_330, x_330, x_330) * vec3<f32>(x_334.x, x_334.y, x_334.z));
    let x_337 : vec3<f32> = in_NORMAL0;
    let x_338 : vec3<f32> = u_xlat3;
    u_xlat17 = dot(x_337, x_338);
    let x_340 : f32 = u_xlat17;
    u_xlat17 = clamp(x_340, 0.0f, 1.0f);
    let x_342 : vec3<f32> = u_xlat4;
    let x_343 : f32 = u_xlat17;
    let x_346 : vec3<f32> = u_xlat2;
    u_xlat2 = ((x_342 * vec3<f32>(x_343, x_343, x_343)) + x_346);

    continuing {
      let x_348 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_348 + bitcast<u32>(1i));
    }
  }
  let x_351 : vec3<f32> = u_xlat2;
  let x_352 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_356 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_356;
  vs_TEXCOORD3.w = 0.0f;
  vs_TEXCOORD4.w = 0.0f;
  let x_361 : vec3<f32> = in_NORMAL0;
  let x_362 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  vs_TEXCOORD5.w = 0.0f;
  vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_368 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_368;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD4, vs_TEXCOORD3, vs_TEXCOORD5);
}


