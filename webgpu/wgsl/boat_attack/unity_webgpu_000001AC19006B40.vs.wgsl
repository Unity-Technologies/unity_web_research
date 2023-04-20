diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_TimeParameters : vec4<f32>,
  /* @offset(16) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(80) */
  x_PrevViewProjMatrix : mat4x4<f32>,
  /* @offset(144) */
  x_NonJitteredViewProjMatrix : mat4x4<f32>,
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

var<private> u_xlat0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlat4 : f32;

@group(1) @binding(1) var<uniform> x_57 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_POSITION0 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_98 : UnityPerDraw;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> in_TEXCOORD4 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_CLIP_POSITION_NO_JITTER0 : vec3<f32>;

var<private> vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_TEXCOORD0;
  let x_18 : vec2<f32> = (vec2<f32>(x_13.y, x_13.y) + vec2<f32>(0.5f, 1.0f));
  let x_19 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_18.x, x_18.y, x_19.z, x_19.w);
  let x_26 : f32 = u_xlat0.y;
  u_xlat4 = floor(x_26);
  let x_28 : f32 = u_xlat4;
  let x_32 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_28) + x_32);
  let x_36 : f32 = u_xlat0.x;
  let x_38 : f32 = u_xlat0.x;
  u_xlat0.x = (x_36 + x_38);
  let x_42 : f32 = u_xlat0.x;
  u_xlat0.x = ((abs(x_42) * 2.0f) + -1.0f);
  let x_50 : f32 = u_xlat0.x;
  u_xlat0.x = (x_50 * 6.2831859588623046875f);
  let x_62 : f32 = x_57.x_TimeParameters.x;
  let x_66 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_62 * 3.0f) + x_66);
  let x_70 : f32 = u_xlat0.x;
  u_xlat0.x = sin(x_70);
  let x_74 : f32 = u_xlat0.x;
  let x_78 : f32 = in_COLOR0.y;
  u_xlat0.x = (x_74 * x_78);
  let x_82 : f32 = u_xlat0.x;
  let x_90 : f32 = in_POSITION0.z;
  u_xlat4 = ((-(x_82) * 0.5f) + x_90);
  let x_93 : vec3<f32> = in_POSITION0;
  let x_102 : vec4<f32> = x_98.unity_ObjectToWorld[1i];
  let x_104 : vec3<f32> = (vec3<f32>(x_93.y, x_93.y, x_93.y) * vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_104.z, x_105.w);
  let x_108 : vec4<f32> = x_98.unity_ObjectToWorld[0i];
  let x_110 : vec3<f32> = in_POSITION0;
  let x_113 : vec4<f32> = u_xlat1;
  let x_115 : vec3<f32> = ((vec3<f32>(x_108.x, x_108.y, x_108.z) * vec3<f32>(x_110.x, x_110.x, x_110.x)) + vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_120 : vec4<f32> = x_98.unity_ObjectToWorld[2i];
  let x_122 : f32 = u_xlat4;
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec3<f32> = ((vec3<f32>(x_120.x, x_120.y, x_120.z) * vec3<f32>(x_122, x_122, x_122)) + vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_130 : vec4<f32> = u_xlat1;
  let x_134 : vec4<f32> = x_98.unity_ObjectToWorld[3i];
  let x_136 : vec3<f32> = (vec3<f32>(x_130.x, x_130.y, x_130.z) + vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_140 : vec4<f32> = u_xlat1;
  let x_143 : vec4<f32> = x_57.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_140.y, x_140.y, x_140.y, x_140.y) * x_143);
  let x_146 : vec4<f32> = x_57.unity_MatrixVP[0i];
  let x_147 : vec4<f32> = u_xlat1;
  let x_150 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_146 * vec4<f32>(x_147.x, x_147.x, x_147.x, x_147.x)) + x_150);
  let x_153 : vec4<f32> = x_57.unity_MatrixVP[2i];
  let x_154 : vec4<f32> = u_xlat1;
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_153 * vec4<f32>(x_154.z, x_154.z, x_154.z, x_154.z)) + x_157);
  let x_159 : vec4<f32> = u_xlat2;
  let x_161 : vec4<f32> = x_57.unity_MatrixVP[3i];
  u_xlat2 = (x_159 + x_161);
  let x_169 : f32 = x_98.unity_MotionVectorsParams.z;
  let x_173 : f32 = u_xlat2.w;
  let x_176 : f32 = u_xlat2.z;
  gl_Position.z = ((-(x_169) * x_173) + x_176);
  let x_184 : f32 = x_98.unity_MotionVectorsParams.y;
  u_xlatb8 = !((x_184 == 0.0f));
  let x_187 : bool = u_xlatb8;
  if (x_187) {
    let x_191 : f32 = x_98.unity_MotionVectorsParams.x;
    u_xlatb8 = (x_191 == 1.0f);
    let x_193 : bool = u_xlatb8;
    if (x_193) {
      let x_197 : f32 = u_xlat0.x;
      let x_202 : f32 = in_TEXCOORD4.z;
      u_xlat4 = ((-(x_197) * 0.5f) + x_202);
      let x_204 : vec3<f32> = in_TEXCOORD4;
      let x_205 : vec2<f32> = vec2<f32>(x_204.x, x_204.y);
      let x_206 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_205.x, x_206.y, x_205.y, x_206.w);
    } else {
      let x_209 : vec3<f32> = in_POSITION0;
      let x_210 : vec2<f32> = vec2<f32>(x_209.x, x_209.y);
      let x_211 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_210.x, x_211.y, x_210.y, x_211.w);
    }
    let x_215 : vec4<f32> = u_xlat1;
    let x_218 : vec4<f32> = x_57.x_NonJitteredViewProjMatrix[1i];
    u_xlat3 = (vec3<f32>(x_215.y, x_215.y, x_215.y) * vec3<f32>(x_218.x, x_218.y, x_218.w));
    let x_222 : vec4<f32> = x_57.x_NonJitteredViewProjMatrix[0i];
    let x_224 : vec4<f32> = u_xlat1;
    let x_227 : vec3<f32> = u_xlat3;
    let x_228 : vec3<f32> = ((vec3<f32>(x_222.x, x_222.y, x_222.w) * vec3<f32>(x_224.x, x_224.x, x_224.x)) + x_227);
    let x_229 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_228.x, x_228.y, x_229.z, x_228.z);
    let x_232 : vec4<f32> = x_57.x_NonJitteredViewProjMatrix[2i];
    let x_234 : vec4<f32> = u_xlat1;
    let x_237 : vec4<f32> = u_xlat1;
    let x_239 : vec3<f32> = ((vec3<f32>(x_232.x, x_232.y, x_232.w) * vec3<f32>(x_234.z, x_234.z, x_234.z)) + vec3<f32>(x_237.x, x_237.y, x_237.w));
    let x_240 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
    let x_244 : vec4<f32> = u_xlat1;
    let x_247 : vec4<f32> = x_57.x_NonJitteredViewProjMatrix[3i];
    vs_CLIP_POSITION_NO_JITTER0 = (vec3<f32>(x_244.x, x_244.y, x_244.z) + vec3<f32>(x_247.x, x_247.y, x_247.w));
    let x_250 : vec4<f32> = u_xlat0;
    let x_254 : vec4<f32> = x_98.unity_MatrixPreviousM[1i];
    u_xlat1 = (vec4<f32>(x_250.z, x_250.z, x_250.z, x_250.z) * x_254);
    let x_257 : vec4<f32> = x_98.unity_MatrixPreviousM[0i];
    let x_258 : vec4<f32> = u_xlat0;
    let x_261 : vec4<f32> = u_xlat1;
    u_xlat1 = ((x_257 * vec4<f32>(x_258.x, x_258.x, x_258.x, x_258.x)) + x_261);
    let x_264 : vec4<f32> = x_98.unity_MatrixPreviousM[2i];
    let x_265 : f32 = u_xlat4;
    let x_268 : vec4<f32> = u_xlat1;
    u_xlat0 = ((x_264 * vec4<f32>(x_265, x_265, x_265, x_265)) + x_268);
    let x_270 : vec4<f32> = u_xlat0;
    let x_272 : vec4<f32> = x_98.unity_MatrixPreviousM[3i];
    u_xlat0 = (x_270 + x_272);
    let x_274 : vec4<f32> = u_xlat0;
    let x_277 : vec4<f32> = x_57.x_PrevViewProjMatrix[1i];
    let x_279 : vec3<f32> = (vec3<f32>(x_274.y, x_274.y, x_274.y) * vec3<f32>(x_277.x, x_277.y, x_277.w));
    let x_280 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
    let x_283 : vec4<f32> = x_57.x_PrevViewProjMatrix[0i];
    let x_285 : vec4<f32> = u_xlat0;
    let x_288 : vec4<f32> = u_xlat1;
    let x_290 : vec3<f32> = ((vec3<f32>(x_283.x, x_283.y, x_283.w) * vec3<f32>(x_285.x, x_285.x, x_285.x)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
    let x_291 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_294 : vec4<f32> = x_57.x_PrevViewProjMatrix[2i];
    let x_296 : vec4<f32> = u_xlat0;
    let x_299 : vec4<f32> = u_xlat1;
    let x_301 : vec3<f32> = ((vec3<f32>(x_294.x, x_294.y, x_294.w) * vec3<f32>(x_296.z, x_296.z, x_296.z)) + vec3<f32>(x_299.x, x_299.y, x_299.z));
    let x_302 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
    let x_306 : vec4<f32> = x_57.x_PrevViewProjMatrix[3i];
    let x_308 : vec4<f32> = u_xlat0;
    let x_311 : vec4<f32> = u_xlat0;
    vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 = ((vec3<f32>(x_306.x, x_306.y, x_306.w) * vec3<f32>(x_308.w, x_308.w, x_308.w)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  } else {
    vs_CLIP_POSITION_NO_JITTER0 = vec3<f32>(0.0f, 0.0f, 0.0f);
    vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 = vec3<f32>(0.0f, 0.0f, 0.0f);
  }
  let x_316 : vec4<f32> = u_xlat2;
  let x_317 : vec3<f32> = vec3<f32>(x_316.x, x_316.y, x_316.w);
  let x_320 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_317.x, x_317.y, x_320.z, x_317.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_CLIP_POSITION_NO_JITTER0_1 : vec3<f32>,
  @location(1)
  vs_PREVIOUS_CLIP_POSITION_NO_JITTER0_1 : vec3<f32>,
}

@vertex
fn main(@location(1) in_TEXCOORD0_param : vec4<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(0) in_POSITION0_param : vec3<f32>, @location(3) in_TEXCOORD4_param : vec3<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD4 = in_TEXCOORD4_param;
  main_1();
  return main_out(gl_Position, vs_CLIP_POSITION_NO_JITTER0, vs_PREVIOUS_CLIP_POSITION_NO_JITTER0);
}


