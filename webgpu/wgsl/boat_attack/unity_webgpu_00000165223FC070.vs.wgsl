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

@group(1) @binding(2) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(4) var<uniform> x_37 : UnityPerDraw;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_116 : MainLightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_241 : AdditionalLights;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
    let x_197 : u32 = u_xlatu_loop_1;
    u_xlatu21 = (x_197 >> 2u);
    let x_200 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_200 & 3u));
    let x_205 : u32 = u_xlatu21;
    let x_208 : vec4<f32> = x_37.unity_LightIndices[bitcast<i32>(x_205)];
    let x_218 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_223 : vec4<u32> = indexable[x_218];
    u_xlat21 = dot(x_208, bitcast<vec4<f32>>(x_223));
    let x_227 : f32 = u_xlat21;
    u_xlati21 = i32(x_227);
    let x_230 : vec3<f32> = u_xlat0;
    let x_242 : i32 = u_xlati21;
    let x_244 : vec4<f32> = x_241.x_AdditionalLightsPosition[x_242];
    let x_247 : i32 = u_xlati21;
    let x_249 : vec4<f32> = x_241.x_AdditionalLightsPosition[x_247];
    u_xlat4 = ((-(x_230) * vec3<f32>(x_244.w, x_244.w, x_244.w)) + vec3<f32>(x_249.x, x_249.y, x_249.z));
    let x_253 : vec3<f32> = u_xlat4;
    let x_254 : vec3<f32> = u_xlat4;
    u_xlat22 = dot(x_253, x_254);
    let x_256 : f32 = u_xlat22;
    u_xlat22 = max(x_256, 6.10351562e-05f);
    let x_260 : f32 = u_xlat22;
    u_xlat5.x = inverseSqrt(x_260);
    let x_263 : vec3<f32> = u_xlat4;
    let x_264 : vec3<f32> = u_xlat5;
    u_xlat4 = (x_263 * vec3<f32>(x_264.x, x_264.x, x_264.x));
    let x_267 : f32 = u_xlat22;
    u_xlat5.x = (1.0f / x_267);
    let x_270 : f32 = u_xlat22;
    let x_271 : i32 = u_xlati21;
    let x_273 : f32 = x_241.x_AdditionalLightsAttenuation[x_271].x;
    u_xlat22 = (x_270 * x_273);
    let x_275 : f32 = u_xlat22;
    let x_277 : f32 = u_xlat22;
    u_xlat22 = ((-(x_275) * x_277) + 1.0f);
    let x_280 : f32 = u_xlat22;
    u_xlat22 = max(x_280, 0.0f);
    let x_282 : f32 = u_xlat22;
    let x_283 : f32 = u_xlat22;
    u_xlat22 = (x_282 * x_283);
    let x_285 : f32 = u_xlat22;
    let x_287 : f32 = u_xlat5.x;
    u_xlat22 = (x_285 * x_287);
    let x_289 : i32 = u_xlati21;
    let x_291 : vec4<f32> = x_241.x_AdditionalLightsSpotDir[x_289];
    let x_293 : vec3<f32> = u_xlat4;
    u_xlat5.x = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), x_293);
    let x_297 : f32 = u_xlat5.x;
    let x_298 : i32 = u_xlati21;
    let x_300 : f32 = x_241.x_AdditionalLightsAttenuation[x_298].z;
    let x_302 : i32 = u_xlati21;
    let x_304 : f32 = x_241.x_AdditionalLightsAttenuation[x_302].w;
    u_xlat5.x = ((x_297 * x_300) + x_304);
    let x_308 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_308, 0.0f, 1.0f);
    let x_312 : f32 = u_xlat5.x;
    let x_314 : f32 = u_xlat5.x;
    u_xlat5.x = (x_312 * x_314);
    let x_317 : f32 = u_xlat22;
    let x_319 : f32 = u_xlat5.x;
    u_xlat22 = (x_317 * x_319);
    let x_321 : f32 = u_xlat22;
    let x_323 : i32 = u_xlati21;
    let x_325 : vec4<f32> = x_241.x_AdditionalLightsColor[x_323];
    u_xlat5 = (vec3<f32>(x_321, x_321, x_321) * vec3<f32>(x_325.x, x_325.y, x_325.z));
    let x_328 : vec3<f32> = in_NORMAL0;
    let x_329 : vec3<f32> = u_xlat4;
    u_xlat21 = dot(x_328, x_329);
    let x_331 : f32 = u_xlat21;
    u_xlat21 = clamp(x_331, 0.0f, 1.0f);
    let x_333 : vec3<f32> = u_xlat5;
    let x_334 : f32 = u_xlat21;
    let x_337 : vec3<f32> = u_xlat3;
    u_xlat3 = ((x_333 * vec3<f32>(x_334, x_334, x_334)) + x_337);

    continuing {
      let x_339 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_339 + bitcast<u32>(1i));
    }
  }
  let x_342 : vec3<f32> = u_xlat3;
  let x_343 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_346 : f32 = u_xlat1.z;
  let x_348 : f32 = x_17.x_ProjectionParams.y;
  u_xlat18 = (x_346 / x_348);
  let x_350 : f32 = u_xlat18;
  u_xlat18 = (-(x_350) + 1.0f);
  let x_353 : f32 = u_xlat18;
  let x_355 : f32 = x_17.x_ProjectionParams.z;
  u_xlat18 = (x_353 * x_355);
  let x_357 : f32 = u_xlat18;
  u_xlat18 = max(x_357, 0.0f);
  let x_359 : f32 = u_xlat18;
  let x_362 : f32 = x_17.unity_FogParams.x;
  vs_TEXCOORD3.w = (x_359 * x_362);
  let x_369 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_369;
  vs_TEXCOORD4.w = 0.0f;
  let x_372 : vec3<f32> = in_NORMAL0;
  let x_373 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_380 : vec4<f32> = u_xlat1;
  gl_Position = x_380;
  let x_384 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_384;
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

