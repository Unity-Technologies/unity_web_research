struct VGlobals {
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_ProjectionParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_17 : VGlobals;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_41 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_104 : MainLightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_229 : AdditionalLights;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlati18 : i32;
  var u_xlat3 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu21 : u32;
  var u_xlati4 : i32;
  var u_xlat21 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati21 : i32;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat5 : vec3<f32>;
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
    let x_185 : u32 = u_xlatu_loop_1;
    u_xlatu21 = (x_185 >> 2u);
    let x_188 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_188 & 3u));
    let x_193 : u32 = u_xlatu21;
    let x_196 : vec4<f32> = x_41.unity_LightIndices[bitcast<i32>(x_193)];
    let x_206 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_211 : vec4<u32> = indexable[x_206];
    u_xlat21 = dot(x_196, bitcast<vec4<f32>>(x_211));
    let x_215 : f32 = u_xlat21;
    u_xlati21 = i32(x_215);
    let x_218 : vec3<f32> = u_xlat0;
    let x_230 : i32 = u_xlati21;
    let x_232 : vec4<f32> = x_229.x_AdditionalLightsPosition[x_230];
    let x_235 : i32 = u_xlati21;
    let x_237 : vec4<f32> = x_229.x_AdditionalLightsPosition[x_235];
    u_xlat4 = ((-(x_218) * vec3<f32>(x_232.w, x_232.w, x_232.w)) + vec3<f32>(x_237.x, x_237.y, x_237.z));
    let x_241 : vec3<f32> = u_xlat4;
    let x_242 : vec3<f32> = u_xlat4;
    u_xlat22 = dot(x_241, x_242);
    let x_244 : f32 = u_xlat22;
    u_xlat22 = max(x_244, 6.10351562e-05f);
    let x_248 : f32 = u_xlat22;
    u_xlat5.x = inverseSqrt(x_248);
    let x_251 : vec3<f32> = u_xlat4;
    let x_252 : vec3<f32> = u_xlat5;
    u_xlat4 = (x_251 * vec3<f32>(x_252.x, x_252.x, x_252.x));
    let x_255 : f32 = u_xlat22;
    u_xlat5.x = (1.0f / x_255);
    let x_258 : f32 = u_xlat22;
    let x_259 : i32 = u_xlati21;
    let x_261 : f32 = x_229.x_AdditionalLightsAttenuation[x_259].x;
    u_xlat22 = (x_258 * x_261);
    let x_263 : f32 = u_xlat22;
    let x_265 : f32 = u_xlat22;
    u_xlat22 = ((-(x_263) * x_265) + 1.0f);
    let x_268 : f32 = u_xlat22;
    u_xlat22 = max(x_268, 0.0f);
    let x_270 : f32 = u_xlat22;
    let x_271 : f32 = u_xlat22;
    u_xlat22 = (x_270 * x_271);
    let x_273 : f32 = u_xlat22;
    let x_275 : f32 = u_xlat5.x;
    u_xlat22 = (x_273 * x_275);
    let x_277 : i32 = u_xlati21;
    let x_279 : vec4<f32> = x_229.x_AdditionalLightsSpotDir[x_277];
    let x_281 : vec3<f32> = u_xlat4;
    u_xlat5.x = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), x_281);
    let x_285 : f32 = u_xlat5.x;
    let x_286 : i32 = u_xlati21;
    let x_288 : f32 = x_229.x_AdditionalLightsAttenuation[x_286].z;
    let x_290 : i32 = u_xlati21;
    let x_292 : f32 = x_229.x_AdditionalLightsAttenuation[x_290].w;
    u_xlat5.x = ((x_285 * x_288) + x_292);
    let x_296 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_296, 0.0f, 1.0f);
    let x_300 : f32 = u_xlat5.x;
    let x_302 : f32 = u_xlat5.x;
    u_xlat5.x = (x_300 * x_302);
    let x_305 : f32 = u_xlat22;
    let x_307 : f32 = u_xlat5.x;
    u_xlat22 = (x_305 * x_307);
    let x_309 : f32 = u_xlat22;
    let x_311 : i32 = u_xlati21;
    let x_313 : vec4<f32> = x_229.x_AdditionalLightsColor[x_311];
    u_xlat5 = (vec3<f32>(x_309, x_309, x_309) * vec3<f32>(x_313.x, x_313.y, x_313.z));
    let x_316 : vec3<f32> = in_NORMAL0;
    let x_317 : vec3<f32> = u_xlat4;
    u_xlat21 = dot(x_316, x_317);
    let x_319 : f32 = u_xlat21;
    u_xlat21 = clamp(x_319, 0.0f, 1.0f);
    let x_321 : vec3<f32> = u_xlat5;
    let x_322 : f32 = u_xlat21;
    let x_325 : vec3<f32> = u_xlat3;
    u_xlat3 = ((x_321 * vec3<f32>(x_322, x_322, x_322)) + x_325);

    continuing {
      let x_327 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_327 + bitcast<u32>(1i));
    }
  }
  let x_330 : vec3<f32> = u_xlat3;
  let x_331 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_334 : f32 = u_xlat1.z;
  let x_336 : f32 = x_17.x_ProjectionParams.y;
  u_xlat18 = (x_334 / x_336);
  let x_338 : f32 = u_xlat18;
  u_xlat18 = (-(x_338) + 1.0f);
  let x_341 : f32 = u_xlat18;
  let x_343 : f32 = x_17.x_ProjectionParams.z;
  u_xlat18 = (x_341 * x_343);
  let x_345 : f32 = u_xlat18;
  u_xlat18 = max(x_345, 0.0f);
  let x_347 : f32 = u_xlat18;
  let x_350 : f32 = x_17.unity_FogParams.x;
  vs_TEXCOORD3.w = (x_347 * x_350);
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
  let x_374 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_374;
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

