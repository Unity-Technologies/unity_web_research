diagnostic(off, derivative_uniformity);

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

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4<f32>,
  /* @offset(16) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(32) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(48) */
  x_MainLightColor : vec4<f32>,
  /* @offset(64) */
  x_TimeParameters : vec4<f32>,
  /* @offset(80) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(96) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(112) */
  x_ScreenParams : vec4<f32>,
  /* @offset(128) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(144) */
  unity_FogParams : vec4<f32>,
  /* @offset(160) */
  unity_FogColor : vec4<f32>,
  /* @offset(176) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(240) */
  x_BA_SkyboxRatio : f32,
  /* @offset(256) */
  x_BA_CloudData : vec4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_7eff2e7fc27440719d0a871a39dabdd3 : vec4<f32>,
  /* @offset(32) */
  Vector1_2a375228e8d3437382814520b0cd8644 : f32,
  /* @offset(36) */
  Vector1_5f4b185241524942830132fc71554a33 : f32,
  /* @offset(40) */
  Vector1_2d1f70e8efb04843b1f8184ae06925e0 : f32,
  /* @offset(44) */
  Vector1_33982692 : f32,
  /* @offset(48) */
  Vector1_10DA9AB3 : f32,
  /* @offset(56) */
  Vector2_65050940ec244ae3bf42db206c2dccca : vec2<f32>,
  /* @offset(64) */
  Texture2D_4B382D9C_TexelSize : vec4<f32>,
  /* @offset(80) */
  Texture2D_3DC46A50_TexelSize : vec4<f32>,
  /* @offset(96) */
  x_BA_SkyboxMatrix : mat4x4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb0 : vec2<bool>;

var<private> vs_INTERP0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_43 : UnityPerDraw;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_INTERP3 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlat19 : f32;

@group(1) @binding(0) var<uniform> x_166 : PGlobals;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(1) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(4) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP1 : vec4<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat13 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_441 : UnityPerMaterial;

var<private> u_xlatb4 : vec3<bool>;

var<private> vs_INTERP2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat12 : vec2<f32>;

@group(0) @binding(0) var x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D : texture_2d<f32>;

@group(0) @binding(3) var sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D : sampler;

@group(0) @binding(2) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(5) var samplerTexture2D_3DC46A50 : sampler;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_262 : f32;
  var x_274 : f32;
  var x_324 : f32;
  var x_475 : f32;
  var x_487 : f32;
  var x_499 : f32;
  var x_590 : vec3<f32>;
  var x_882 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_33 : f32 = vs_INTERP0.w;
  u_xlatb0.x = (0.0f < x_33);
  let x_48 : f32 = x_43.unity_WorldTransformParams.w;
  u_xlatb0.y = (x_48 >= 0.0f);
  let x_55 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_55);
  let x_61 : bool = u_xlatb0.y;
  u_xlat0.y = select(-1.0f, 1.0f, x_61);
  let x_65 : f32 = u_xlat0.y;
  let x_67 : f32 = u_xlat0.x;
  u_xlat0.x = (x_65 * x_67);
  let x_71 : vec4<f32> = vs_INTERP0;
  let x_75 : vec3<f32> = vs_INTERP3;
  u_xlat6 = (vec3<f32>(x_71.x, x_71.y, x_71.z) * vec3<f32>(x_75.y, x_75.z, x_75.x));
  let x_78 : vec3<f32> = vs_INTERP3;
  let x_79 : vec4<f32> = vs_INTERP0;
  let x_82 : vec3<f32> = u_xlat6;
  u_xlat6 = ((x_78 * vec3<f32>(x_79.y, x_79.z, x_79.x)) + -(x_82));
  let x_85 : vec3<f32> = u_xlat6;
  let x_86 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_85 * vec3<f32>(x_86.x, x_86.x, x_86.x));
  let x_90 : vec3<f32> = vs_INTERP3;
  let x_91 : vec3<f32> = vs_INTERP3;
  u_xlat18 = dot(x_90, x_91);
  let x_93 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_93);
  let x_95 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_95);
  let x_97 : vec3<f32> = u_xlat0;
  let x_98 : f32 = u_xlat18;
  u_xlat0 = (x_97 * vec3<f32>(x_98, x_98, x_98));
  let x_103 : f32 = u_xlat18;
  let x_105 : vec3<f32> = vs_INTERP3;
  let x_107 : vec3<f32> = (vec3<f32>(x_103, x_103, x_103) * vec3<f32>(x_105.y, x_105.z, x_105.x));
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : f32 = u_xlat18;
  let x_113 : vec4<f32> = vs_INTERP0;
  let x_115 : vec3<f32> = (vec3<f32>(x_111, x_111, x_111) * vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_116 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_119 : vec3<f32> = u_xlat0;
  let x_120 : vec4<f32> = u_xlat1;
  let x_122 : vec3<f32> = (x_119 * vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec3<f32> = u_xlat0;
  let x_127 : vec4<f32> = u_xlat1;
  let x_130 : vec4<f32> = u_xlat3;
  let x_133 : vec3<f32> = ((vec3<f32>(x_125.x, x_125.z, x_125.y) * vec3<f32>(x_127.z, x_127.y, x_127.x)) + -(vec3<f32>(x_130.y, x_130.x, x_130.z)));
  let x_134 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_136 : vec4<f32> = u_xlat2;
  let x_138 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_136.y, x_136.x, x_136.z), vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_142 : f32 = u_xlat18;
  u_xlatb18 = (x_142 < 0.0f);
  let x_144 : bool = u_xlatb18;
  u_xlat18 = select(1.0f, -1.0f, x_144);
  let x_148 : f32 = u_xlat0.x;
  let x_150 : f32 = u_xlat2.x;
  u_xlat19 = (x_148 * x_150);
  let x_153 : f32 = u_xlat2.z;
  let x_155 : f32 = u_xlat0.y;
  let x_157 : f32 = u_xlat19;
  u_xlat3.z = ((x_153 * x_155) + -(x_157));
  let x_161 : vec3<f32> = u_xlat0;
  let x_170 : vec4<f32> = x_166.x_MainLightPosition;
  u_xlat0.y = dot(vec3<f32>(x_161.y, x_161.z, x_161.x), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_175 : f32 = u_xlat1.z;
  let x_177 : f32 = u_xlat2.z;
  u_xlat19 = (x_175 * x_177);
  let x_180 : f32 = u_xlat1.y;
  let x_182 : f32 = u_xlat2.x;
  let x_184 : f32 = u_xlat19;
  u_xlat3.y = ((x_180 * x_182) + -(x_184));
  let x_188 : vec4<f32> = u_xlat1;
  let x_191 : vec4<f32> = x_166.x_MainLightPosition;
  u_xlat0.z = dot(vec3<f32>(x_188.z, x_188.x, x_188.y), vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_195 : vec4<f32> = u_xlat2;
  let x_198 : vec4<f32> = x_166.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : f32 = u_xlat18;
  let x_204 : vec4<f32> = u_xlat3;
  let x_206 : vec3<f32> = (vec3<f32>(x_202, x_202, x_202) * vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_209 : vec4<f32> = u_xlat1;
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_214 : f32 = u_xlat18;
  u_xlat18 = max(x_214, 1.17549435e-38f);
  let x_217 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_217);
  let x_219 : f32 = u_xlat18;
  let x_221 : vec4<f32> = u_xlat1;
  let x_223 : vec3<f32> = (vec3<f32>(x_219, x_219, x_219) * vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat1;
  let x_228 : vec4<f32> = u_xlat1;
  let x_230 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) * vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_231 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_237 : vec4<f32> = u_xlat1;
  let x_240 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_237.x, x_237.y, x_237.z, x_237.x));
  u_xlatb1 = vec3<bool>(x_240.x, x_240.y, x_240.z);
  let x_253 : vec4<f32> = vs_INTERP1;
  let x_257 : f32 = x_166.x_GlobalMipBias.x;
  let x_258 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_253.x, x_253.y), x_257);
  u_xlat3 = x_258;
  let x_260 : bool = u_xlatb1.x;
  if (x_260) {
    let x_266 : f32 = u_xlat3.z;
    x_262 = x_266;
  } else {
    let x_269 : f32 = u_xlat3.x;
    x_262 = x_269;
  }
  let x_270 : f32 = x_262;
  u_xlat1.x = x_270;
  let x_273 : bool = u_xlatb1.y;
  if (x_273) {
    let x_278 : f32 = u_xlat3.y;
    x_274 = x_278;
  } else {
    let x_281 : f32 = u_xlat3.w;
    x_274 = x_281;
  }
  let x_282 : f32 = x_274;
  u_xlat1.y = x_282;
  let x_284 : vec4<f32> = u_xlat2;
  let x_286 : vec4<f32> = u_xlat1;
  let x_288 : vec2<f32> = (vec2<f32>(x_284.x, x_284.y) * vec2<f32>(x_286.x, x_286.y));
  let x_289 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_288.x, x_288.y, x_289.z, x_289.w);
  let x_292 : f32 = u_xlat1.y;
  let x_294 : f32 = u_xlat1.x;
  u_xlat18 = (x_292 + x_294);
  let x_296 : vec4<f32> = u_xlat3;
  let x_298 : vec4<f32> = u_xlat3;
  let x_300 : vec2<f32> = (vec2<f32>(x_296.z, x_296.w) + vec2<f32>(x_298.x, x_298.y));
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_300.x, x_300.y, x_301.z, x_301.w);
  let x_304 : f32 = u_xlat1.y;
  let x_306 : f32 = u_xlat1.x;
  u_xlat1.x = (x_304 + x_306);
  let x_311 : f32 = u_xlat1.x;
  u_xlat7 = (x_311 * 0.25f);
  let x_315 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_315) * 0.25f) + 1.0f);
  let x_323 : bool = u_xlatb1.z;
  if (x_323) {
    let x_327 : f32 = u_xlat7;
    x_324 = x_327;
  } else {
    let x_330 : f32 = u_xlat1.x;
    x_324 = x_330;
  }
  let x_331 : f32 = x_324;
  u_xlat13.x = x_331;
  let x_334 : f32 = u_xlat13.x;
  let x_336 : f32 = u_xlat2.z;
  let x_338 : f32 = u_xlat18;
  u_xlat2.y = ((x_334 * x_336) + x_338);
  u_xlat2.x = 1.0f;
  u_xlat2.z = 1.0f;
  u_xlat2.w = 1.0f;
  let x_344 : vec4<f32> = u_xlat2;
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_344.y, x_344.z, x_344.z), vec3<f32>(x_346.y, x_346.z, x_346.z));
  let x_349 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_349);
  let x_351 : f32 = u_xlat18;
  let x_353 : vec4<f32> = u_xlat2;
  let x_355 : vec3<f32> = (vec3<f32>(x_351, x_351, x_351) * vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_359 : vec4<f32> = u_xlat2;
  let x_361 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_359.y, x_359.z, x_359.y) * vec3<f32>(x_361.z, x_361.z, x_361.y));
  let x_365 : f32 = u_xlat2.z;
  let x_367 : f32 = u_xlat2.z;
  let x_370 : f32 = u_xlat4.z;
  u_xlat18 = ((x_365 * x_367) + -(x_370));
  let x_376 : vec4<f32> = x_43.unity_SHBr;
  let x_377 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_376, vec4<f32>(x_377.x, x_377.x, x_377.y, x_377.y));
  let x_383 : vec4<f32> = x_43.unity_SHBg;
  let x_384 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_383, vec4<f32>(x_384.x, x_384.x, x_384.y, x_384.y));
  let x_390 : vec4<f32> = x_43.unity_SHBb;
  let x_391 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_390, vec4<f32>(x_391.x, x_391.x, x_391.y, x_391.y));
  let x_397 : vec4<f32> = x_43.unity_SHC;
  let x_399 : f32 = u_xlat18;
  let x_402 : vec3<f32> = u_xlat5;
  u_xlat4 = ((vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_399, x_399, x_399)) + x_402);
  let x_406 : vec4<f32> = x_43.unity_SHAr;
  let x_408 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(vec4<f32>(x_406.y, x_406.x, x_406.z, x_406.w), vec4<f32>(x_408.y, x_408.z, x_408.z, x_408.w));
  let x_414 : vec4<f32> = x_43.unity_SHAg;
  let x_416 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(vec4<f32>(x_414.y, x_414.x, x_414.z, x_414.w), vec4<f32>(x_416.y, x_416.z, x_416.z, x_416.w));
  let x_422 : vec4<f32> = x_43.unity_SHAb;
  let x_423 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_422, x_423);
  let x_426 : vec3<f32> = u_xlat4;
  let x_427 : vec3<f32> = u_xlat5;
  let x_428 : vec3<f32> = (x_426 + x_427);
  let x_429 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat2;
  let x_434 : vec3<f32> = max(vec3<f32>(x_431.x, x_431.y, x_431.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_435 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
  let x_437 : vec4<f32> = u_xlat2;
  let x_443 : f32 = x_441.Vector1_5f4b185241524942830132fc71554a33;
  let x_445 : f32 = x_441.Vector1_5f4b185241524942830132fc71554a33;
  let x_447 : f32 = x_441.Vector1_5f4b185241524942830132fc71554a33;
  let x_448 : vec3<f32> = vec3<f32>(x_443, x_445, x_447);
  let x_453 : vec3<f32> = (vec3<f32>(x_437.x, x_437.y, x_437.z) * vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_454 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_456 : vec3<f32> = u_xlat0;
  let x_457 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_456, x_457);
  let x_459 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_459);
  let x_461 : f32 = u_xlat18;
  let x_463 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_461, x_461, x_461) * x_463);
  let x_466 : vec3<f32> = u_xlat0;
  let x_468 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_466.x, x_466.y, x_466.z, x_466.x));
  u_xlatb4 = vec3<bool>(x_468.x, x_468.y, x_468.z);
  let x_470 : vec3<f32> = u_xlat0;
  let x_471 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_470 * x_471);
  let x_474 : bool = u_xlatb4.x;
  if (x_474) {
    let x_479 : f32 = u_xlat3.z;
    x_475 = x_479;
  } else {
    let x_482 : f32 = u_xlat3.x;
    x_475 = x_482;
  }
  let x_483 : f32 = x_475;
  u_xlat13.x = x_483;
  let x_486 : bool = u_xlatb4.y;
  if (x_486) {
    let x_491 : f32 = u_xlat3.y;
    x_487 = x_491;
  } else {
    let x_494 : f32 = u_xlat3.w;
    x_487 = x_494;
  }
  let x_495 : f32 = x_487;
  u_xlat13.y = x_495;
  let x_498 : bool = u_xlatb4.z;
  if (x_498) {
    let x_502 : f32 = u_xlat7;
    x_499 = x_502;
  } else {
    let x_505 : f32 = u_xlat1.x;
    x_499 = x_505;
  }
  let x_506 : f32 = x_499;
  u_xlat18 = x_506;
  let x_507 : vec3<f32> = u_xlat0;
  let x_509 : vec2<f32> = u_xlat13;
  let x_510 : vec2<f32> = (vec2<f32>(x_507.x, x_507.y) * x_509);
  let x_511 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_510.x, x_510.y, x_511.z);
  let x_514 : f32 = u_xlat0.y;
  let x_516 : f32 = u_xlat0.x;
  u_xlat0.x = (x_514 + x_516);
  let x_519 : f32 = u_xlat18;
  let x_521 : f32 = u_xlat0.z;
  let x_524 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_519 * x_521) + x_524);
  let x_528 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_528);
  let x_532 : f32 = x_441.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_532 * 0.5f);
  let x_537 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_537, 0.00100000004749745131f);
  let x_542 : f32 = u_xlat0.x;
  let x_544 : f32 = u_xlat6.x;
  u_xlat0.x = (x_542 * x_544);
  let x_548 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_548);
  let x_552 : vec3<f32> = vs_INTERP2;
  let x_557 : vec3<f32> = x_166.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_552) + x_557);
  let x_559 : vec3<f32> = u_xlat6;
  let x_560 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_559, x_560);
  let x_564 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_564);
  let x_567 : vec3<f32> = u_xlat6;
  let x_568 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_567 * vec3<f32>(x_568.x, x_568.x, x_568.x));
  let x_573 : f32 = x_166.unity_OrthoParams.w;
  u_xlatb1.x = (x_573 == 0.0f);
  let x_579 : f32 = x_166.unity_MatrixV[0i].z;
  u_xlat3.x = x_579;
  let x_582 : f32 = x_166.unity_MatrixV[1i].z;
  u_xlat3.y = x_582;
  let x_585 : f32 = x_166.unity_MatrixV[2i].z;
  u_xlat3.z = x_585;
  let x_588 : bool = u_xlatb1.x;
  if (x_588) {
    let x_593 : vec3<f32> = u_xlat6;
    x_590 = x_593;
  } else {
    let x_595 : vec4<f32> = u_xlat3;
    x_590 = vec3<f32>(x_595.x, x_595.y, x_595.z);
  }
  let x_597 : vec3<f32> = x_590;
  u_xlat6 = x_597;
  let x_598 : vec3<f32> = u_xlat6;
  let x_599 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_598, x_599);
  let x_603 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_603);
  let x_606 : vec3<f32> = u_xlat6;
  let x_607 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_606 * vec3<f32>(x_607.x, x_607.x, x_607.x));
  let x_610 : vec3<f32> = u_xlat6;
  let x_612 : vec4<f32> = x_166.x_MainLightPosition;
  u_xlat6.x = dot(x_610, -(vec3<f32>(x_612.x, x_612.y, x_612.z)));
  let x_618 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_618, 0.0f, 1.0f);
  let x_622 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_622);
  let x_626 : f32 = u_xlat6.x;
  u_xlat6.x = (x_626 * 150.0f);
  let x_631 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_631);
  let x_635 : f32 = u_xlat6.x;
  u_xlat6.x = (x_635 + 1.0f);
  let x_639 : f32 = u_xlat0.x;
  let x_641 : f32 = u_xlat6.x;
  u_xlat0.x = (x_639 * x_641);
  let x_645 : vec4<f32> = x_166.x_MainLightColor;
  let x_647 : vec3<f32> = u_xlat0;
  let x_650 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_645.x, x_645.y, x_645.z) * vec3<f32>(x_647.x, x_647.x, x_647.x)) + vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_654 : vec4<f32> = x_441.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_656 : vec3<f32> = u_xlat0;
  let x_660 : vec4<f32> = x_166.unity_FogColor;
  u_xlat0 = ((vec3<f32>(x_654.x, x_654.y, x_654.z) * x_656) + -(vec3<f32>(x_660.x, x_660.y, x_660.z)));
  let x_664 : vec3<f32> = vs_INTERP2;
  let x_667 : vec4<f32> = x_43.unity_WorldToObject[1i];
  let x_669 : vec3<f32> = (vec3<f32>(x_664.y, x_664.y, x_664.y) * vec3<f32>(x_667.x, x_667.y, x_667.z));
  let x_670 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_673 : vec4<f32> = x_43.unity_WorldToObject[0i];
  let x_675 : vec3<f32> = vs_INTERP2;
  let x_678 : vec4<f32> = u_xlat1;
  let x_680 : vec3<f32> = ((vec3<f32>(x_673.x, x_673.y, x_673.z) * vec3<f32>(x_675.x, x_675.x, x_675.x)) + vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_684 : vec4<f32> = x_43.unity_WorldToObject[2i];
  let x_686 : vec3<f32> = vs_INTERP2;
  let x_689 : vec4<f32> = u_xlat1;
  let x_691 : vec3<f32> = ((vec3<f32>(x_684.x, x_684.y, x_684.z) * vec3<f32>(x_686.z, x_686.z, x_686.z)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec4<f32> = u_xlat1;
  let x_697 : vec4<f32> = x_43.unity_WorldToObject[3i];
  let x_699 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) + vec3<f32>(x_697.x, x_697.y, x_697.z));
  let x_700 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_699.x, x_699.y, x_699.z, x_700.w);
  let x_702 : vec4<f32> = u_xlat1;
  let x_705 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  let x_707 : vec3<f32> = (vec3<f32>(x_702.y, x_702.y, x_702.y) * vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_711 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_713 : vec4<f32> = u_xlat1;
  let x_716 : vec4<f32> = u_xlat2;
  let x_718 : vec3<f32> = ((vec3<f32>(x_711.x, x_711.y, x_711.z) * vec3<f32>(x_713.x, x_713.x, x_713.x)) + vec3<f32>(x_716.x, x_716.y, x_716.z));
  let x_719 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_718.x, x_718.y, x_719.z, x_718.z);
  let x_722 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_724 : vec4<f32> = u_xlat1;
  let x_727 : vec4<f32> = u_xlat1;
  let x_729 : vec3<f32> = ((vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(x_724.z, x_724.z, x_724.z)) + vec3<f32>(x_727.x, x_727.y, x_727.w));
  let x_730 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat1;
  let x_735 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_737 : vec3<f32> = (vec3<f32>(x_732.x, x_732.y, x_732.z) + vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_741 : f32 = u_xlat1.y;
  let x_743 : f32 = x_166.unity_MatrixV[1i].z;
  u_xlat18 = (x_741 * x_743);
  let x_746 : f32 = x_166.unity_MatrixV[0i].z;
  let x_748 : f32 = u_xlat1.x;
  let x_750 : f32 = u_xlat18;
  u_xlat18 = ((x_746 * x_748) + x_750);
  let x_753 : f32 = x_166.unity_MatrixV[2i].z;
  let x_755 : f32 = u_xlat1.z;
  let x_757 : f32 = u_xlat18;
  u_xlat18 = ((x_753 * x_755) + x_757);
  let x_759 : f32 = u_xlat18;
  let x_761 : f32 = x_166.unity_MatrixV[3i].z;
  u_xlat18 = (x_759 + x_761);
  let x_763 : f32 = u_xlat18;
  let x_767 : f32 = x_166.x_ProjectionParams.y;
  u_xlat18 = (-(x_763) + -(x_767));
  let x_770 : f32 = u_xlat18;
  u_xlat18 = max(x_770, 0.0f);
  let x_772 : f32 = u_xlat18;
  let x_775 : f32 = x_166.unity_FogParams.x;
  u_xlat18 = (x_772 * x_775);
  let x_777 : f32 = u_xlat18;
  let x_778 : f32 = u_xlat18;
  u_xlat18 = (x_777 * -(x_778));
  let x_781 : f32 = u_xlat18;
  u_xlat18 = exp2(x_781);
  let x_783 : f32 = u_xlat18;
  u_xlat18 = (-(x_783) + 1.0f);
  let x_786 : f32 = u_xlat18;
  let x_789 : f32 = x_166.x_BA_SkyboxRatio;
  u_xlat18 = (x_786 / x_789);
  let x_791 : f32 = u_xlat18;
  let x_793 : f32 = u_xlat18;
  u_xlat18 = ((-(x_791) * x_793) + 1.0f);
  let x_796 : f32 = u_xlat18;
  u_xlat18 = exp2(x_796);
  let x_798 : f32 = u_xlat18;
  u_xlat18 = (-(x_798) + 1.0f);
  let x_802 : f32 = x_166.x_BA_SkyboxRatio;
  u_xlat1.x = (-(x_802) + 1.0f);
  let x_807 : f32 = x_166.x_WorldSpaceCameraPos.y;
  let x_810 : f32 = u_xlat1.x;
  let x_813 : f32 = vs_INTERP2.y;
  u_xlat1.x = ((-(x_807) * x_810) + x_813);
  let x_817 : f32 = x_441.Vector1_10DA9AB3;
  let x_820 : f32 = x_166.x_BA_SkyboxRatio;
  let x_823 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_817) * x_820) + x_823);
  let x_827 : f32 = x_166.x_BA_SkyboxRatio;
  let x_829 : f32 = x_441.Vector1_33982692;
  u_xlat7 = (x_827 * x_829);
  let x_831 : f32 = u_xlat7;
  u_xlat7 = max(x_831, 0.0f);
  let x_833 : f32 = u_xlat7;
  u_xlat7 = (1.0f / x_833);
  let x_835 : f32 = u_xlat7;
  let x_837 : f32 = u_xlat1.x;
  u_xlat1.x = (x_835 * x_837);
  let x_841 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_841, 0.0f, 1.0f);
  let x_845 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_845) + 1.0f);
  let x_850 : f32 = u_xlat1.x;
  let x_852 : f32 = u_xlat18;
  u_xlat18 = ((-(x_850) * x_852) + 1.0f);
  let x_855 : f32 = u_xlat18;
  u_xlat18 = min(x_855, 1.0f);
  let x_859 : f32 = u_xlat18;
  let x_861 : vec3<f32> = u_xlat0;
  let x_864 : vec4<f32> = x_166.unity_FogColor;
  let x_866 : vec3<f32> = ((vec3<f32>(x_859, x_859, x_859) * x_861) + vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_867 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_870 : f32 = x_166.x_ProjectionParams.x;
  u_xlatb0.x = (x_870 < 0.0f);
  let x_874 : f32 = hlslcc_FragCoord.y;
  let x_877 : f32 = x_166.x_ScaledScreenParams.y;
  u_xlat6.x = (-(x_874) + x_877);
  let x_881 : bool = u_xlatb0.x;
  if (x_881) {
    let x_886 : f32 = u_xlat6.x;
    x_882 = x_886;
  } else {
    let x_889 : f32 = hlslcc_FragCoord.y;
    x_882 = x_889;
  }
  let x_890 : f32 = x_882;
  u_xlat0.y = x_890;
  let x_893 : f32 = hlslcc_FragCoord.x;
  u_xlat0.x = x_893;
  let x_895 : vec3<f32> = u_xlat0;
  let x_898 : vec4<f32> = x_166.x_ScaledScreenParams;
  let x_900 : vec2<f32> = (vec2<f32>(x_895.x, x_895.y) / vec2<f32>(x_898.x, x_898.y));
  let x_901 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_900.x, x_900.y, x_901.z);
  let x_904 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_904) + 1.0f);
  let x_908 : vec3<f32> = u_xlat0;
  let x_912 : vec4<f32> = x_166.x_ScreenParams;
  let x_914 : vec2<f32> = (vec2<f32>(x_908.x, x_908.z) * vec2<f32>(x_912.x, x_912.y));
  let x_915 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_914.x, x_914.y, x_915.z);
  let x_917 : vec3<f32> = u_xlat0;
  let x_919 : vec2<f32> = floor(vec2<f32>(x_917.x, x_917.y));
  let x_920 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_919.x, x_919.y, x_920.z);
  let x_924 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_927 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  u_xlat12.x = dot(vec3<f32>(x_924.x, x_924.y, x_924.z), vec3<f32>(x_927.x, x_927.y, x_927.z));
  let x_932 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_932);
  let x_937 : vec4<f32> = x_166.x_TimeParameters;
  let x_942 : vec2<f32> = (vec2<f32>(x_937.x, x_937.x) * vec2<f32>(0.01799999922513961792f, 0.31999999284744262695f));
  let x_943 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_942.x, x_942.y, x_943.z, x_943.w);
  let x_945 : vec2<f32> = u_xlat12;
  let x_950 : vec4<f32> = u_xlat1;
  u_xlat12 = ((vec2<f32>(x_945.x, x_945.x) * vec2<f32>(0.32100000977516174316f, 0.32100000977516174316f)) + vec2<f32>(x_950.x, x_950.y));
  let x_953 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_953);
  let x_955 : vec2<f32> = u_xlat12;
  u_xlat12.x = dot(vec2<f32>(x_955.x, x_955.x), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_962 : vec2<f32> = u_xlat12;
  u_xlat12.y = dot(vec2<f32>(x_962.y, x_962.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_966 : vec2<f32> = u_xlat12;
  u_xlat12 = sin(x_966);
  let x_968 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_968 * vec2<f32>(43758.546875f, 43758.546875f));
  let x_972 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_972);
  let x_974 : vec2<f32> = u_xlat12;
  let x_976 : vec4<f32> = x_166.x_ScreenParams;
  let x_978 : vec2<f32> = (x_974 * vec2<f32>(x_976.x, x_976.y));
  let x_979 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_978.x, x_978.y, x_979.z, x_979.w);
  let x_981 : vec3<f32> = u_xlat0;
  let x_983 : vec4<f32> = u_xlat1;
  let x_985 : vec2<f32> = (vec2<f32>(x_981.x, x_981.y) + vec2<f32>(x_983.x, x_983.y));
  let x_986 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_985.x, x_985.y, x_986.z);
  let x_988 : vec3<f32> = u_xlat0;
  let x_992 : vec2<f32> = (vec2<f32>(x_988.x, x_988.y) * vec2<f32>(0.00390625f, 0.00390625f));
  let x_993 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_992.x, x_992.y, x_993.z);
  let x_995 : vec3<f32> = u_xlat0;
  let x_997 : vec2<f32> = fract(vec2<f32>(x_995.x, x_995.y));
  let x_998 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_997.x, x_997.y, x_998.z);
  let x_1005 : vec3<f32> = u_xlat0;
  let x_1008 : f32 = x_166.x_GlobalMipBias.x;
  let x_1009 : vec4<f32> = textureSampleBias(x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D, sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D, vec2<f32>(x_1005.x, x_1005.y), x_1008);
  u_xlat0.x = x_1009.y;
  let x_1013 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1013 * 0.30000001192092895508f) + 0.80000001192092895508f);
  let x_1020 : f32 = u_xlat0.x;
  let x_1024 : f32 = x_166.x_BA_CloudData.w;
  u_xlat0.x = ((-(x_1020) * x_1024) + 1.0f);
  let x_1033 : vec4<f32> = vs_INTERP1;
  let x_1036 : f32 = x_166.x_GlobalMipBias.x;
  let x_1037 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_1033.x, x_1033.y), x_1036);
  let x_1038 : vec2<f32> = vec2<f32>(x_1037.z, x_1037.w);
  let x_1039 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_1038.x, x_1038.y, x_1039.z);
  let x_1042 : f32 = u_xlat0.x;
  let x_1045 : f32 = u_xlat6.x;
  u_xlat0.x = (-(x_1042) + x_1045);
  let x_1049 : f32 = u_xlat6.y;
  u_xlat6.x = (-(x_1049) + 1.0f);
  let x_1054 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_1054);
  let x_1058 : f32 = u_xlat6.x;
  let x_1060 : f32 = x_441.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_1058 * x_1060);
  let x_1064 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_1064);
  let x_1068 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_1068) + 1.0f);
  let x_1073 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1073 * 10.0f);
  let x_1078 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1078, 0.0f, 1.0f);
  let x_1082 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_1082 * -2.0f) + 3.0f);
  let x_1089 : f32 = u_xlat0.x;
  let x_1091 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1089 * x_1091);
  let x_1095 : f32 = u_xlat0.x;
  let x_1097 : f32 = u_xlat12.x;
  u_xlat0.x = (x_1095 * x_1097);
  let x_1101 : f32 = u_xlat0.x;
  let x_1103 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_1101, x_1103);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_INTERP0_param : vec4<f32>, @location(3) vs_INTERP3_param : vec3<f32>, @location(1) vs_INTERP1_param : vec4<f32>, @location(2) vs_INTERP2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  main_1();
  return main_out(SV_Target0);
}


