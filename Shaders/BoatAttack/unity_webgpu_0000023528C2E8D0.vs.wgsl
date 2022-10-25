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

type Arr_1 = array<vec4<f32>, 256u>;

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_6 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_5,
  x_AdditionalLightsColor : Arr_5,
  x_AdditionalLightsAttenuation : Arr_5,
  x_AdditionalLightsSpotDir : Arr_5,
  x_AdditionalLightsOcclusionProbes : Arr_5,
  x_AdditionalLightsLayerMasks : Arr_6,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

@group(1) @binding(4) var<uniform> x_37 : UnityPerDraw;

var<private> in_POSITION0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_205 : AdditionalLights;

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
  let x_111 : vec4<f32> = x_17.x_MainLightColor;
  let x_114 : vec4<f32> = x_37.unity_LightData;
  u_xlat2 = (vec3<f32>(x_111.x, x_111.y, x_111.z) * vec3<f32>(x_114.z, x_114.z, x_114.z));
  let x_121 : vec3<f32> = in_NORMAL0;
  let x_123 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat18 = dot(x_121, vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : f32 = u_xlat18;
  u_xlat18 = clamp(x_126, 0.0f, 1.0f);
  let x_130 : f32 = u_xlat18;
  let x_132 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_130, x_130, x_130) * x_132);
  let x_137 : f32 = x_17.x_AdditionalLightsCount.x;
  let x_140 : f32 = x_37.unity_LightData.y;
  u_xlat18 = min(x_137, x_140);
  let x_144 : f32 = u_xlat18;
  u_xlati18 = i32(x_144);
  let x_147 : vec3<f32> = u_xlat2;
  u_xlat3 = x_147;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_155 : u32 = u_xlatu_loop_1;
    let x_156 : i32 = u_xlati18;
    if ((x_155 < bitcast<u32>(x_156))) {
    } else {
      break;
    }
    let x_161 : u32 = u_xlatu_loop_1;
    u_xlatu21 = (x_161 >> 2u);
    let x_164 : u32 = u_xlatu_loop_1;
    u_xlati4 = bitcast<i32>((x_164 & 3u));
    let x_169 : u32 = u_xlatu21;
    let x_172 : vec4<f32> = x_37.unity_LightIndices[bitcast<i32>(x_169)];
    let x_182 : i32 = u_xlati4;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_187 : vec4<u32> = indexable[x_182];
    u_xlat21 = dot(x_172, bitcast<vec4<f32>>(x_187));
    let x_191 : f32 = u_xlat21;
    u_xlati21 = i32(x_191);
    let x_194 : vec3<f32> = u_xlat0;
    let x_206 : i32 = u_xlati21;
    let x_208 : vec4<f32> = x_205.x_AdditionalLightsPosition[x_206];
    let x_211 : i32 = u_xlati21;
    let x_213 : vec4<f32> = x_205.x_AdditionalLightsPosition[x_211];
    u_xlat4 = ((-(x_194) * vec3<f32>(x_208.w, x_208.w, x_208.w)) + vec3<f32>(x_213.x, x_213.y, x_213.z));
    let x_217 : vec3<f32> = u_xlat4;
    let x_218 : vec3<f32> = u_xlat4;
    u_xlat22 = dot(x_217, x_218);
    let x_220 : f32 = u_xlat22;
    u_xlat22 = max(x_220, 6.10351562e-05f);
    let x_224 : f32 = u_xlat22;
    u_xlat5.x = inverseSqrt(x_224);
    let x_227 : vec3<f32> = u_xlat4;
    let x_228 : vec3<f32> = u_xlat5;
    u_xlat4 = (x_227 * vec3<f32>(x_228.x, x_228.x, x_228.x));
    let x_231 : f32 = u_xlat22;
    u_xlat5.x = (1.0f / x_231);
    let x_234 : f32 = u_xlat22;
    let x_235 : i32 = u_xlati21;
    let x_237 : f32 = x_205.x_AdditionalLightsAttenuation[x_235].x;
    u_xlat22 = (x_234 * x_237);
    let x_239 : f32 = u_xlat22;
    let x_241 : f32 = u_xlat22;
    u_xlat22 = ((-(x_239) * x_241) + 1.0f);
    let x_244 : f32 = u_xlat22;
    u_xlat22 = max(x_244, 0.0f);
    let x_246 : f32 = u_xlat22;
    let x_247 : f32 = u_xlat22;
    u_xlat22 = (x_246 * x_247);
    let x_249 : f32 = u_xlat22;
    let x_251 : f32 = u_xlat5.x;
    u_xlat22 = (x_249 * x_251);
    let x_253 : i32 = u_xlati21;
    let x_255 : vec4<f32> = x_205.x_AdditionalLightsSpotDir[x_253];
    let x_257 : vec3<f32> = u_xlat4;
    u_xlat5.x = dot(vec3<f32>(x_255.x, x_255.y, x_255.z), x_257);
    let x_261 : f32 = u_xlat5.x;
    let x_262 : i32 = u_xlati21;
    let x_264 : f32 = x_205.x_AdditionalLightsAttenuation[x_262].z;
    let x_266 : i32 = u_xlati21;
    let x_268 : f32 = x_205.x_AdditionalLightsAttenuation[x_266].w;
    u_xlat5.x = ((x_261 * x_264) + x_268);
    let x_272 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_272, 0.0f, 1.0f);
    let x_276 : f32 = u_xlat5.x;
    let x_278 : f32 = u_xlat5.x;
    u_xlat5.x = (x_276 * x_278);
    let x_281 : f32 = u_xlat22;
    let x_283 : f32 = u_xlat5.x;
    u_xlat22 = (x_281 * x_283);
    let x_285 : f32 = u_xlat22;
    let x_287 : i32 = u_xlati21;
    let x_289 : vec4<f32> = x_205.x_AdditionalLightsColor[x_287];
    u_xlat5 = (vec3<f32>(x_285, x_285, x_285) * vec3<f32>(x_289.x, x_289.y, x_289.z));
    let x_292 : vec3<f32> = in_NORMAL0;
    let x_293 : vec3<f32> = u_xlat4;
    u_xlat21 = dot(x_292, x_293);
    let x_295 : f32 = u_xlat21;
    u_xlat21 = clamp(x_295, 0.0f, 1.0f);
    let x_297 : vec3<f32> = u_xlat5;
    let x_298 : f32 = u_xlat21;
    let x_301 : vec3<f32> = u_xlat3;
    u_xlat3 = ((x_297 * vec3<f32>(x_298, x_298, x_298)) + x_301);

    continuing {
      let x_303 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_303 + bitcast<u32>(1i));
    }
  }
  let x_307 : vec3<f32> = u_xlat3;
  let x_308 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_311 : f32 = u_xlat1.z;
  let x_313 : f32 = x_17.x_ProjectionParams.y;
  u_xlat18 = (x_311 / x_313);
  let x_315 : f32 = u_xlat18;
  u_xlat18 = (-(x_315) + 1.0f);
  let x_318 : f32 = u_xlat18;
  let x_320 : f32 = x_17.x_ProjectionParams.z;
  u_xlat18 = (x_318 * x_320);
  let x_322 : f32 = u_xlat18;
  u_xlat18 = max(x_322, 0.0f);
  let x_324 : f32 = u_xlat18;
  let x_327 : f32 = x_17.unity_FogParams.x;
  vs_TEXCOORD3.w = (x_324 * x_327);
  let x_334 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_334;
  let x_336 : vec3<f32> = in_NORMAL0;
  let x_337 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_345 : vec4<f32> = u_xlat1;
  gl_Position = x_345;
  let x_349 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_349;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(3)
  vs_TEXCOORD6_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(2) in_TEXCOORD1_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(3) in_NORMAL0_param : vec3<f32>, @location(4) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD3, gl_Position, vs_TEXCOORD6);
}

