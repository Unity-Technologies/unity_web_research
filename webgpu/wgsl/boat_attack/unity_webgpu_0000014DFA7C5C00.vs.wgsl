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

@group(1) @binding(3) var<uniform> x_17 : VGlobals;

var<private> u_xlat0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_41 : UnityPerDraw;

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

@group(1) @binding(4) var<uniform> x_206 : AdditionalLights;

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
    let x_161 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_161 >> 2u);
    let x_164 : u32 = u_xlatu_loop_1;
    u_xlati3 = bitcast<i32>((x_164 & 3u));
    let x_170 : u32 = u_xlatu17;
    let x_173 : vec4<f32> = x_41.unity_LightIndices[bitcast<i32>(x_170)];
    let x_183 : i32 = u_xlati3;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_188 : vec4<u32> = indexable[x_183];
    u_xlat17 = dot(x_173, bitcast<vec4<f32>>(x_188));
    let x_192 : f32 = u_xlat17;
    u_xlati17 = i32(x_192);
    let x_195 : vec3<f32> = u_xlat0;
    let x_207 : i32 = u_xlati17;
    let x_209 : vec4<f32> = x_206.x_AdditionalLightsPosition[x_207];
    let x_212 : i32 = u_xlati17;
    let x_214 : vec4<f32> = x_206.x_AdditionalLightsPosition[x_212];
    u_xlat3 = ((-(x_195) * vec3<f32>(x_209.w, x_209.w, x_209.w)) + vec3<f32>(x_214.x, x_214.y, x_214.z));
    let x_218 : vec3<f32> = u_xlat3;
    let x_219 : vec3<f32> = u_xlat3;
    u_xlat18 = dot(x_218, x_219);
    let x_221 : f32 = u_xlat18;
    u_xlat18 = max(x_221, 0.00006103515625f);
    let x_225 : f32 = u_xlat18;
    u_xlat4.x = inverseSqrt(x_225);
    let x_228 : vec3<f32> = u_xlat3;
    let x_229 : vec3<f32> = u_xlat4;
    u_xlat3 = (x_228 * vec3<f32>(x_229.x, x_229.x, x_229.x));
    let x_232 : f32 = u_xlat18;
    u_xlat4.x = (1.0f / x_232);
    let x_235 : f32 = u_xlat18;
    let x_236 : i32 = u_xlati17;
    let x_238 : f32 = x_206.x_AdditionalLightsAttenuation[x_236].x;
    u_xlat18 = (x_235 * x_238);
    let x_240 : f32 = u_xlat18;
    let x_242 : f32 = u_xlat18;
    u_xlat18 = ((-(x_240) * x_242) + 1.0f);
    let x_245 : f32 = u_xlat18;
    u_xlat18 = max(x_245, 0.0f);
    let x_247 : f32 = u_xlat18;
    let x_248 : f32 = u_xlat18;
    u_xlat18 = (x_247 * x_248);
    let x_250 : f32 = u_xlat18;
    let x_252 : f32 = u_xlat4.x;
    u_xlat18 = (x_250 * x_252);
    let x_254 : i32 = u_xlati17;
    let x_256 : vec4<f32> = x_206.x_AdditionalLightsSpotDir[x_254];
    let x_258 : vec3<f32> = u_xlat3;
    u_xlat4.x = dot(vec3<f32>(x_256.x, x_256.y, x_256.z), x_258);
    let x_262 : f32 = u_xlat4.x;
    let x_263 : i32 = u_xlati17;
    let x_265 : f32 = x_206.x_AdditionalLightsAttenuation[x_263].z;
    let x_267 : i32 = u_xlati17;
    let x_269 : f32 = x_206.x_AdditionalLightsAttenuation[x_267].w;
    u_xlat4.x = ((x_262 * x_265) + x_269);
    let x_273 : f32 = u_xlat4.x;
    u_xlat4.x = clamp(x_273, 0.0f, 1.0f);
    let x_277 : f32 = u_xlat4.x;
    let x_279 : f32 = u_xlat4.x;
    u_xlat4.x = (x_277 * x_279);
    let x_282 : f32 = u_xlat18;
    let x_284 : f32 = u_xlat4.x;
    u_xlat18 = (x_282 * x_284);
    let x_286 : f32 = u_xlat18;
    let x_288 : i32 = u_xlati17;
    let x_290 : vec4<f32> = x_206.x_AdditionalLightsColor[x_288];
    u_xlat4 = (vec3<f32>(x_286, x_286, x_286) * vec3<f32>(x_290.x, x_290.y, x_290.z));
    let x_293 : vec3<f32> = in_NORMAL0;
    let x_294 : vec3<f32> = u_xlat3;
    u_xlat17 = dot(x_293, x_294);
    let x_296 : f32 = u_xlat17;
    u_xlat17 = clamp(x_296, 0.0f, 1.0f);
    let x_298 : vec3<f32> = u_xlat4;
    let x_299 : f32 = u_xlat17;
    let x_302 : vec3<f32> = u_xlat2;
    u_xlat2 = ((x_298 * vec3<f32>(x_299, x_299, x_299)) + x_302);

    continuing {
      let x_304 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_304 + bitcast<u32>(1i));
    }
  }
  let x_307 : vec3<f32> = u_xlat2;
  let x_308 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_312 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_312;
  vs_TEXCOORD3.w = 0.0f;
  let x_316 : vec3<f32> = in_NORMAL0;
  let x_317 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  vs_TEXCOORD5.w = 0.0f;
  vs_TEXCOORD1 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_324 : vec3<f32> = u_xlat0;
  vs_TEXCOORD6 = x_324;
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


