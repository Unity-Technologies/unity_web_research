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

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_6 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_5,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_5,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_5,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_5,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_5,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_6,
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

var<private> u_xlat15 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlati15 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatu17 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat17 : f32;

var<private> u_xlati17 : i32;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_218 : AdditionalLights;

var<private> u_xlat18 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
  let x_116 : vec4<f32> = x_17.x_MainLightColor;
  let x_120 : vec4<f32> = x_37.unity_LightData;
  let x_122 : vec3<f32> = (vec3<f32>(x_116.x, x_116.y, x_116.z) * vec3<f32>(x_120.z, x_120.z, x_120.z));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_129 : vec3<f32> = in_NORMAL0;
  let x_131 : vec4<f32> = x_17.x_MainLightPosition;
  u_xlat15 = dot(x_129, vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : f32 = u_xlat15;
  u_xlat15 = clamp(x_134, 0.0f, 1.0f);
  let x_138 : f32 = u_xlat15;
  let x_140 : vec4<f32> = u_xlat1;
  let x_142 : vec3<f32> = (vec3<f32>(x_138, x_138, x_138) * vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_143 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
  let x_148 : f32 = x_17.x_AdditionalLightsCount.x;
  let x_150 : f32 = x_37.unity_LightData.y;
  u_xlat15 = min(x_148, x_150);
  let x_154 : f32 = u_xlat15;
  u_xlati15 = i32(x_154);
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat2 = vec3<f32>(x_157.x, x_157.y, x_157.z);
  u_xlatu_loop_1 = 0u;
  loop {
    let x_166 : u32 = u_xlatu_loop_1;
    let x_167 : i32 = u_xlati15;
    if ((x_166 < bitcast<u32>(x_167))) {
    } else {
      break;
    }
    let x_173 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_173 >> 2u);
    let x_176 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_176 & 3u));
    let x_182 : u32 = u_xlatu17;
    let x_185 : vec4<f32> = x_37.unity_LightIndices[bitcast<i32>(x_182)];
    let x_195 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_200 : vec4<u32> = indexable[x_195];
    u_xlat17 = dot(x_185, bitcast<vec4<f32>>(x_200));
    let x_204 : f32 = u_xlat17;
    u_xlati17 = i32(x_204);
    let x_207 : vec3<f32> = u_xlat0;
    let x_219 : i32 = u_xlati17;
    let x_221 : vec4<f32> = x_218.x_AdditionalLightsPosition[x_219];
    let x_224 : i32 = u_xlati17;
    let x_226 : vec4<f32> = x_218.x_AdditionalLightsPosition[x_224];
    u_xlat3 = ((-(x_207) * vec3<f32>(x_221.w, x_221.w, x_221.w)) + vec3<f32>(x_226.x, x_226.y, x_226.z));
    let x_230 : vec3<f32> = u_xlat3;
    let x_231 : vec3<f32> = u_xlat3;
    u_xlat18 = dot(x_230, x_231);
    let x_233 : f32 = u_xlat18;
    u_xlat18 = max(x_233, 0.00006103515625f);
    let x_237 : f32 = u_xlat18;
    u_xlat4.x = inverseSqrt(x_237);
    let x_240 : vec3<f32> = u_xlat3;
    let x_241 : vec3<f32> = u_xlat4;
    u_xlat3 = (x_240 * vec3<f32>(x_241.x, x_241.x, x_241.x));
    let x_244 : f32 = u_xlat18;
    u_xlat4.x = (1.0f / x_244);
    let x_247 : f32 = u_xlat18;
    let x_248 : i32 = u_xlati17;
    let x_250 : f32 = x_218.x_AdditionalLightsAttenuation[x_248].x;
    u_xlat18 = (x_247 * x_250);
    let x_252 : f32 = u_xlat18;
    let x_254 : f32 = u_xlat18;
    u_xlat18 = ((-(x_252) * x_254) + 1.0f);
    let x_257 : f32 = u_xlat18;
    u_xlat18 = max(x_257, 0.0f);
    let x_259 : f32 = u_xlat18;
    let x_260 : f32 = u_xlat18;
    u_xlat18 = (x_259 * x_260);
    let x_262 : f32 = u_xlat18;
    let x_264 : f32 = u_xlat4.x;
    u_xlat18 = (x_262 * x_264);
    let x_266 : i32 = u_xlati17;
    let x_268 : vec4<f32> = x_218.x_AdditionalLightsSpotDir[x_266];
    let x_270 : vec3<f32> = u_xlat3;
    u_xlat4.x = dot(vec3<f32>(x_268.x, x_268.y, x_268.z), x_270);
    let x_274 : f32 = u_xlat4.x;
    let x_275 : i32 = u_xlati17;
    let x_277 : f32 = x_218.x_AdditionalLightsAttenuation[x_275].z;
    let x_279 : i32 = u_xlati17;
    let x_281 : f32 = x_218.x_AdditionalLightsAttenuation[x_279].w;
    u_xlat4.x = ((x_274 * x_277) + x_281);
    let x_285 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_285, 0.0f, 1.0f);
    let x_289 : f32 = u_xlat4.x;
    let x_291 : f32 = u_xlat4.x;
    u_xlat4.x = (x_289 * x_291);
    let x_294 : f32 = u_xlat18;
    let x_296 : f32 = u_xlat4.x;
    u_xlat18 = (x_294 * x_296);
    let x_298 : f32 = u_xlat18;
    let x_300 : i32 = u_xlati17;
    let x_302 : vec4<f32> = x_218.x_AdditionalLightsColor[x_300];
    u_xlat4 = (vec3<f32>(x_298, x_298, x_298) * vec3<f32>(x_302.x, x_302.y, x_302.z));
    let x_305 : vec3<f32> = in_NORMAL0;
    let x_306 : vec3<f32> = u_xlat3;
    u_xlat17 = dot(x_305, x_306);
    let x_308 : f32 = u_xlat17;
    u_xlat17 = clamp(x_308, 0.0f, 1.0f);
    let x_310 : vec3<f32> = u_xlat4;
    let x_311 : f32 = u_xlat17;
    let x_314 : vec3<f32> = u_xlat2;
    u_xlat2 = ((x_310 * vec3<f32>(x_311, x_311, x_311)) + x_314);

    continuing {
      let x_316 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_316 + bitcast<u32>(1i));
    }
  }
  let x_319 : vec3<f32> = u_xlat2;
  let x_320 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_324 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_324;
  vs_TEXCOORD3.w = 0.0f;
  let x_328 : vec3<f32> = in_NORMAL0;
  let x_329 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  vs_TEXCOORD5.w = 0.0f;
  let x_334 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_334;
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(2)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(4)
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
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, gl_Position, vs_TEXCOORD3, vs_TEXCOORD5, vs_TEXCOORD6);
}


