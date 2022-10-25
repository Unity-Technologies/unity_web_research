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

@group(1) @binding(3) var<uniform> x_17 : VGlobals;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_41 : UnityPerDraw;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_205 : AdditionalLights;

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
  let x_104 : vec4<f32> = x_17.x_MainLightColor;
  let x_108 : vec4<f32> = x_41.unity_LightData;
  let x_110 : vec3<f32> = (vec3<f32>(x_104.x, x_104.y, x_104.z) * vec3<f32>(x_108.z, x_108.z, x_108.z));
  let x_111 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_117 : vec3<f32> = in_NORMAL0;
  let x_119 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat15 = dot(x_117, vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : f32 = u_xlat15;
  u_xlat15 = clamp(x_122, 0.0f, 1.0f);
  let x_126 : f32 = u_xlat15;
  let x_128 : vec4<f32> = u_xlat1;
  let x_130 : vec3<f32> = (vec3<f32>(x_126, x_126, x_126) * vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_136 : f32 = x_17.x_AdditionalLightsCount.x;
  let x_138 : f32 = x_41.unity_LightData.y;
  u_xlat15 = min(x_136, x_138);
  let x_142 : f32 = u_xlat15;
  u_xlati15 = i32(x_142);
  let x_145 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_145.x, x_145.y, x_145.z);
  u_xlatu_loop_1 = 0u;
  loop {
    let x_154 : u32 = u_xlatu_loop_1;
    let x_155 : i32 = u_xlati15;
    if ((x_154 < bitcast<u32>(x_155))) {
    } else {
      break;
    }
    let x_160 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_160 >> 2u);
    let x_163 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_163 & 3u));
    let x_169 : u32 = u_xlatu17;
    let x_172 : vec4<f32> = x_41.unity_LightIndices[bitcast<i32>(x_169)];
    let x_182 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_187 : vec4<u32> = indexable[x_182];
    u_xlat17 = dot(x_172, bitcast<vec4<f32>>(x_187));
    let x_191 : f32 = u_xlat17;
    u_xlati17 = i32(x_191);
    let x_194 : vec3<f32> = u_xlat0;
    let x_206 : i32 = u_xlati17;
    let x_208 : vec4<f32> = x_205.x_AdditionalLightsPosition[x_206];
    let x_211 : i32 = u_xlati17;
    let x_213 : vec4<f32> = x_205.x_AdditionalLightsPosition[x_211];
    u_xlat3 = ((-(x_194) * vec3<f32>(x_208.w, x_208.w, x_208.w)) + vec3<f32>(x_213.x, x_213.y, x_213.z));
    let x_217 : vec3<f32> = u_xlat3;
    let x_218 : vec3<f32> = u_xlat3;
    u_xlat18 = dot(x_217, x_218);
    let x_220 : f32 = u_xlat18;
    u_xlat18 = max(x_220, 6.10351562e-05f);
    let x_224 : f32 = u_xlat18;
    u_xlat4.x = inverseSqrt(x_224);
    let x_227 : vec3<f32> = u_xlat3;
    let x_228 : vec3<f32> = u_xlat4;
    u_xlat3 = (x_227 * vec3<f32>(x_228.x, x_228.x, x_228.x));
    let x_231 : f32 = u_xlat18;
    u_xlat4.x = (1.0f / x_231);
    let x_234 : f32 = u_xlat18;
    let x_235 : i32 = u_xlati17;
    let x_237 : f32 = x_205.x_AdditionalLightsAttenuation[x_235].x;
    u_xlat18 = (x_234 * x_237);
    let x_239 : f32 = u_xlat18;
    let x_241 : f32 = u_xlat18;
    u_xlat18 = ((-(x_239) * x_241) + 1.0f);
    let x_244 : f32 = u_xlat18;
    u_xlat18 = max(x_244, 0.0f);
    let x_246 : f32 = u_xlat18;
    let x_247 : f32 = u_xlat18;
    u_xlat18 = (x_246 * x_247);
    let x_249 : f32 = u_xlat18;
    let x_251 : f32 = u_xlat4.x;
    u_xlat18 = (x_249 * x_251);
    let x_253 : i32 = u_xlati17;
    let x_255 : vec4<f32> = x_205.x_AdditionalLightsSpotDir[x_253];
    let x_257 : vec3<f32> = u_xlat3;
    u_xlat4.x = dot(vec3<f32>(x_255.x, x_255.y, x_255.z), x_257);
    let x_261 : f32 = u_xlat4.x;
    let x_262 : i32 = u_xlati17;
    let x_264 : f32 = x_205.x_AdditionalLightsAttenuation[x_262].z;
    let x_266 : i32 = u_xlati17;
    let x_268 : f32 = x_205.x_AdditionalLightsAttenuation[x_266].w;
    u_xlat4.x = ((x_261 * x_264) + x_268);
    let x_272 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_272, 0.0f, 1.0f);
    let x_276 : f32 = u_xlat4.x;
    let x_278 : f32 = u_xlat4.x;
    u_xlat4.x = (x_276 * x_278);
    let x_281 : f32 = u_xlat18;
    let x_283 : f32 = u_xlat4.x;
    u_xlat18 = (x_281 * x_283);
    let x_285 : f32 = u_xlat18;
    let x_287 : i32 = u_xlati17;
    let x_289 : vec4<f32> = x_205.x_AdditionalLightsColor[x_287];
    u_xlat4 = (vec3<f32>(x_285, x_285, x_285) * vec3<f32>(x_289.x, x_289.y, x_289.z));
    let x_292 : vec3<f32> = in_NORMAL0;
    let x_293 : vec3<f32> = u_xlat3;
    u_xlat17 = dot(x_292, x_293);
    let x_295 : f32 = u_xlat17;
    u_xlat17 = clamp(x_295, 0.0f, 1.0f);
    let x_297 : vec3<f32> = u_xlat4;
    let x_298 : f32 = u_xlat17;
    let x_301 : vec3<f32> = u_xlat2;
    u_xlat2 = ((x_297 * vec3<f32>(x_298, x_298, x_298)) + x_301);

    continuing {
      let x_303 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_303 + bitcast<u32>(1i));
    }
  }
  let x_306 : vec3<f32> = u_xlat2;
  let x_307 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
  let x_312 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_312;
  vs_TEXCOORD3.w = 0.0f;
  let x_316 : vec3<f32> = in_NORMAL0;
  let x_317 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  vs_TEXCOORD5.w = 0.0f;
  vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_325 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_325;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD6_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(3) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD3, vs_TEXCOORD5, vs_TEXCOORD6);
}

