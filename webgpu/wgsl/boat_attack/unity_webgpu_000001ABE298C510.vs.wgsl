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

@group(1) @binding(2) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(4) var<uniform> x_37 : UnityPerDraw;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_121 : MainLightShadows;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_261 : AdditionalLights;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
  let x_88 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_85.y, x_85.y, x_85.y, x_85.y) * x_88);
  let x_91 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_92 : vec3<f32> = u_xlat0;
  let x_95 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_91 * vec4<f32>(x_92.x, x_92.x, x_92.x, x_92.x)) + x_95);
  let x_98 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_99 : vec3<f32> = u_xlat0;
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_98 * vec4<f32>(x_99.z, x_99.z, x_99.z, x_99.z)) + x_102);
  let x_109 : vec4<f32> = u_xlat1;
  let x_111 : vec4<f32> = x_17.unity_MatrixVP[3i];
  gl_Position = (x_109 + x_111);
  let x_115 : vec3<f32> = u_xlat0;
  let x_123 : vec4<f32> = x_121.x_MainLightWorldToShadow[0i][1i];
  let x_125 : vec3<f32> = (vec3<f32>(x_115.y, x_115.y, x_115.y) * vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_129 : vec4<f32> = x_121.x_MainLightWorldToShadow[0i][0i];
  let x_131 : vec3<f32> = u_xlat0;
  let x_134 : vec4<f32> = u_xlat1;
  let x_136 : vec3<f32> = ((vec3<f32>(x_129.x, x_129.y, x_129.z) * vec3<f32>(x_131.x, x_131.x, x_131.x)) + vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_140 : vec4<f32> = x_121.x_MainLightWorldToShadow[0i][2i];
  let x_142 : vec3<f32> = u_xlat0;
  let x_145 : vec4<f32> = u_xlat1;
  let x_147 : vec3<f32> = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142.z, x_142.z, x_142.z)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = u_xlat1;
  let x_154 : vec4<f32> = x_121.x_MainLightWorldToShadow[0i][3i];
  let x_156 : vec3<f32> = (vec3<f32>(x_151.x, x_151.y, x_151.z) + vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : vec4<f32> = x_17.x_MainLightColor;
  let x_164 : vec4<f32> = x_37.unity_LightData;
  let x_166 : vec3<f32> = (vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_164.z, x_164.z, x_164.z));
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_173 : vec3<f32> = in_NORMAL0;
  let x_175 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat15 = dot(x_173, vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : f32 = u_xlat15;
  u_xlat15 = clamp(x_178, 0.0f, 1.0f);
  let x_182 : f32 = u_xlat15;
  let x_184 : vec4<f32> = u_xlat1;
  let x_186 : vec3<f32> = (vec3<f32>(x_182, x_182, x_182) * vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_192 : f32 = x_17.x_AdditionalLightsCount.x;
  let x_194 : f32 = x_37.unity_LightData.y;
  u_xlat15 = min(x_192, x_194);
  let x_198 : f32 = u_xlat15;
  u_xlati15 = i32(x_198);
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_201.x, x_201.y, x_201.z);
  u_xlatu_loop_1 = 0u;
  loop {
    let x_210 : u32 = u_xlatu_loop_1;
    let x_211 : i32 = u_xlati15;
    if ((x_210 < bitcast<u32>(x_211))) {
    } else {
      break;
    }
    let x_216 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_216 >> 2u);
    let x_219 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_219 & 3u));
    let x_225 : u32 = u_xlatu17;
    let x_228 : vec4<f32> = x_37.unity_LightIndices[bitcast<i32>(x_225)];
    let x_238 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_243 : vec4<u32> = indexable[x_238];
    u_xlat17 = dot(x_228, bitcast<vec4<f32>>(x_243));
    let x_247 : f32 = u_xlat17;
    u_xlati17 = i32(x_247);
    let x_250 : vec3<f32> = u_xlat0;
    let x_262 : i32 = u_xlati17;
    let x_264 : vec4<f32> = x_261.x_AdditionalLightsPosition[x_262];
    let x_267 : i32 = u_xlati17;
    let x_269 : vec4<f32> = x_261.x_AdditionalLightsPosition[x_267];
    u_xlat3 = ((-(x_250) * vec3<f32>(x_264.w, x_264.w, x_264.w)) + vec3<f32>(x_269.x, x_269.y, x_269.z));
    let x_273 : vec3<f32> = u_xlat3;
    let x_274 : vec3<f32> = u_xlat3;
    u_xlat18 = dot(x_273, x_274);
    let x_276 : f32 = u_xlat18;
    u_xlat18 = max(x_276, 6.10351562e-05f);
    let x_280 : f32 = u_xlat18;
    u_xlat4.x = inverseSqrt(x_280);
    let x_283 : vec3<f32> = u_xlat3;
    let x_284 : vec3<f32> = u_xlat4;
    u_xlat3 = (x_283 * vec3<f32>(x_284.x, x_284.x, x_284.x));
    let x_287 : f32 = u_xlat18;
    u_xlat4.x = (1.0f / x_287);
    let x_290 : f32 = u_xlat18;
    let x_291 : i32 = u_xlati17;
    let x_293 : f32 = x_261.x_AdditionalLightsAttenuation[x_291].x;
    u_xlat18 = (x_290 * x_293);
    let x_295 : f32 = u_xlat18;
    let x_297 : f32 = u_xlat18;
    u_xlat18 = ((-(x_295) * x_297) + 1.0f);
    let x_300 : f32 = u_xlat18;
    u_xlat18 = max(x_300, 0.0f);
    let x_302 : f32 = u_xlat18;
    let x_303 : f32 = u_xlat18;
    u_xlat18 = (x_302 * x_303);
    let x_305 : f32 = u_xlat18;
    let x_307 : f32 = u_xlat4.x;
    u_xlat18 = (x_305 * x_307);
    let x_309 : i32 = u_xlati17;
    let x_311 : vec4<f32> = x_261.x_AdditionalLightsSpotDir[x_309];
    let x_313 : vec3<f32> = u_xlat3;
    u_xlat4.x = dot(vec3<f32>(x_311.x, x_311.y, x_311.z), x_313);
    let x_317 : f32 = u_xlat4.x;
    let x_318 : i32 = u_xlati17;
    let x_320 : f32 = x_261.x_AdditionalLightsAttenuation[x_318].z;
    let x_322 : i32 = u_xlati17;
    let x_324 : f32 = x_261.x_AdditionalLightsAttenuation[x_322].w;
    u_xlat4.x = ((x_317 * x_320) + x_324);
    let x_328 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_328, 0.0f, 1.0f);
    let x_332 : f32 = u_xlat4.x;
    let x_334 : f32 = u_xlat4.x;
    u_xlat4.x = (x_332 * x_334);
    let x_337 : f32 = u_xlat18;
    let x_339 : f32 = u_xlat4.x;
    u_xlat18 = (x_337 * x_339);
    let x_341 : f32 = u_xlat18;
    let x_343 : i32 = u_xlati17;
    let x_345 : vec4<f32> = x_261.x_AdditionalLightsColor[x_343];
    u_xlat4 = (vec3<f32>(x_341, x_341, x_341) * vec3<f32>(x_345.x, x_345.y, x_345.z));
    let x_348 : vec3<f32> = in_NORMAL0;
    let x_349 : vec3<f32> = u_xlat3;
    u_xlat17 = dot(x_348, x_349);
    let x_351 : f32 = u_xlat17;
    u_xlat17 = clamp(x_351, 0.0f, 1.0f);
    let x_353 : vec3<f32> = u_xlat4;
    let x_354 : f32 = u_xlat17;
    let x_357 : vec3<f32> = u_xlat2;
    u_xlat2 = ((x_353 * vec3<f32>(x_354, x_354, x_354)) + x_357);

    continuing {
      let x_359 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_359 + bitcast<u32>(1i));
    }
  }
  let x_362 : vec3<f32> = u_xlat2;
  let x_363 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_368 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_368;
  vs_TEXCOORD3.w = 0.0f;
  vs_TEXCOORD4.w = 0.0f;
  let x_373 : vec3<f32> = in_NORMAL0;
  let x_374 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_379 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_379;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(3)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD5_1 : vec4<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(2) in_TEXCOORD1_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(3) in_NORMAL0_param : vec3<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, gl_Position, vs_TEXCOORD4, vs_TEXCOORD3, vs_TEXCOORD5);
}

