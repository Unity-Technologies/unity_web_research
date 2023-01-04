struct VGlobals {
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_109 : MainLightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_249 : AdditionalLights;

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
  var u_xlat15 : f32;
  var u_xlati15 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu17 : u32;
  var u_xlati3 : i32;
  var u_xlat17 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati17 : i32;
  var u_xlat3 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat4 : vec3<f32>;
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
    let x_204 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_204 >> 2u);
    let x_207 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_207 & 3u));
    let x_213 : u32 = u_xlatu17;
    let x_216 : vec4<f32> = x_41.unity_LightIndices[bitcast<i32>(x_213)];
    let x_226 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_231 : vec4<u32> = indexable[x_226];
    u_xlat17 = dot(x_216, bitcast<vec4<f32>>(x_231));
    let x_235 : f32 = u_xlat17;
    u_xlati17 = i32(x_235);
    let x_238 : vec3<f32> = u_xlat0;
    let x_250 : i32 = u_xlati17;
    let x_252 : vec4<f32> = x_249.x_AdditionalLightsPosition[x_250];
    let x_255 : i32 = u_xlati17;
    let x_257 : vec4<f32> = x_249.x_AdditionalLightsPosition[x_255];
    u_xlat3 = ((-(x_238) * vec3<f32>(x_252.w, x_252.w, x_252.w)) + vec3<f32>(x_257.x, x_257.y, x_257.z));
    let x_261 : vec3<f32> = u_xlat3;
    let x_262 : vec3<f32> = u_xlat3;
    u_xlat18 = dot(x_261, x_262);
    let x_264 : f32 = u_xlat18;
    u_xlat18 = max(x_264, 6.10351562e-05f);
    let x_268 : f32 = u_xlat18;
    u_xlat4.x = inverseSqrt(x_268);
    let x_271 : vec3<f32> = u_xlat3;
    let x_272 : vec3<f32> = u_xlat4;
    u_xlat3 = (x_271 * vec3<f32>(x_272.x, x_272.x, x_272.x));
    let x_275 : f32 = u_xlat18;
    u_xlat4.x = (1.0f / x_275);
    let x_278 : f32 = u_xlat18;
    let x_279 : i32 = u_xlati17;
    let x_281 : f32 = x_249.x_AdditionalLightsAttenuation[x_279].x;
    u_xlat18 = (x_278 * x_281);
    let x_283 : f32 = u_xlat18;
    let x_285 : f32 = u_xlat18;
    u_xlat18 = ((-(x_283) * x_285) + 1.0f);
    let x_288 : f32 = u_xlat18;
    u_xlat18 = max(x_288, 0.0f);
    let x_290 : f32 = u_xlat18;
    let x_291 : f32 = u_xlat18;
    u_xlat18 = (x_290 * x_291);
    let x_293 : f32 = u_xlat18;
    let x_295 : f32 = u_xlat4.x;
    u_xlat18 = (x_293 * x_295);
    let x_297 : i32 = u_xlati17;
    let x_299 : vec4<f32> = x_249.x_AdditionalLightsSpotDir[x_297];
    let x_301 : vec3<f32> = u_xlat3;
    u_xlat4.x = dot(vec3<f32>(x_299.x, x_299.y, x_299.z), x_301);
    let x_305 : f32 = u_xlat4.x;
    let x_306 : i32 = u_xlati17;
    let x_308 : f32 = x_249.x_AdditionalLightsAttenuation[x_306].z;
    let x_310 : i32 = u_xlati17;
    let x_312 : f32 = x_249.x_AdditionalLightsAttenuation[x_310].w;
    u_xlat4.x = ((x_305 * x_308) + x_312);
    let x_316 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_316, 0.0f, 1.0f);
    let x_320 : f32 = u_xlat4.x;
    let x_322 : f32 = u_xlat4.x;
    u_xlat4.x = (x_320 * x_322);
    let x_325 : f32 = u_xlat18;
    let x_327 : f32 = u_xlat4.x;
    u_xlat18 = (x_325 * x_327);
    let x_329 : f32 = u_xlat18;
    let x_331 : i32 = u_xlati17;
    let x_333 : vec4<f32> = x_249.x_AdditionalLightsColor[x_331];
    u_xlat4 = (vec3<f32>(x_329, x_329, x_329) * vec3<f32>(x_333.x, x_333.y, x_333.z));
    let x_336 : vec3<f32> = in_NORMAL0;
    let x_337 : vec3<f32> = u_xlat3;
    u_xlat17 = dot(x_336, x_337);
    let x_339 : f32 = u_xlat17;
    u_xlat17 = clamp(x_339, 0.0f, 1.0f);
    let x_341 : vec3<f32> = u_xlat4;
    let x_342 : f32 = u_xlat17;
    let x_345 : vec3<f32> = u_xlat2;
    u_xlat2 = ((x_341 * vec3<f32>(x_342, x_342, x_342)) + x_345);

    continuing {
      let x_347 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_347 + bitcast<u32>(1i));
    }
  }
  let x_350 : vec3<f32> = u_xlat2;
  let x_351 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_356 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_356;
  vs_TEXCOORD3.w = 0.0f;
  vs_TEXCOORD4.w = 0.0f;
  let x_361 : vec3<f32> = in_NORMAL0;
  let x_362 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  vs_TEXCOORD5.w = 0.0f;
  vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_369 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_369;
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

