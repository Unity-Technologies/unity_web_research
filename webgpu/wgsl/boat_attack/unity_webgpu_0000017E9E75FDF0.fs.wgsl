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
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(64) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(80) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(144) */
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

var<private> u_xlatb0 : vec2<bool>;

var<private> vs_INTERP0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_29 : UnityPerDraw;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_INTERP3 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlat19 : f32;

@group(1) @binding(0) var<uniform> x_152 : PGlobals;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(2) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP1 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(1) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(3) var samplerTexture2D_3DC46A50 : sampler;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_409 : UnityPerMaterial;

var<private> u_xlatb2 : vec3<bool>;

var<private> vs_INTERP2 : vec3<f32>;

var<private> u_xlatb19 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_245 : f32;
  var x_257 : f32;
  var x_292 : f32;
  var x_443 : f32;
  var x_455 : f32;
  var x_467 : f32;
  var x_544 : f32;
  var x_556 : f32;
  var x_567 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : f32 = vs_INTERP0.w;
  u_xlatb0.x = (0.0f < x_19);
  let x_34 : f32 = x_29.unity_WorldTransformParams.w;
  u_xlatb0.y = (x_34 >= 0.0f);
  let x_42 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_42);
  let x_49 : bool = u_xlatb0.y;
  u_xlat0.y = select(-1.0f, 1.0f, x_49);
  let x_53 : f32 = u_xlat0.y;
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = (x_53 * x_55);
  let x_59 : vec4<f32> = vs_INTERP0;
  let x_63 : vec3<f32> = vs_INTERP3;
  u_xlat6 = (vec3<f32>(x_59.x, x_59.y, x_59.z) * vec3<f32>(x_63.y, x_63.z, x_63.x));
  let x_66 : vec3<f32> = vs_INTERP3;
  let x_67 : vec4<f32> = vs_INTERP0;
  let x_70 : vec3<f32> = u_xlat6;
  u_xlat6 = ((x_66 * vec3<f32>(x_67.y, x_67.z, x_67.x)) + -(x_70));
  let x_73 : vec3<f32> = u_xlat6;
  let x_74 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_73 * vec3<f32>(x_74.x, x_74.x, x_74.x));
  let x_78 : vec3<f32> = vs_INTERP3;
  let x_79 : vec3<f32> = vs_INTERP3;
  u_xlat18 = dot(x_78, x_79);
  let x_81 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_81);
  let x_83 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_83);
  let x_85 : vec3<f32> = u_xlat0;
  let x_86 : f32 = u_xlat18;
  u_xlat0 = (x_85 * vec3<f32>(x_86, x_86, x_86));
  let x_91 : f32 = u_xlat18;
  let x_93 : vec3<f32> = vs_INTERP3;
  let x_95 : vec3<f32> = (vec3<f32>(x_91, x_91, x_91) * vec3<f32>(x_93.y, x_93.z, x_93.x));
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : f32 = u_xlat18;
  let x_101 : vec4<f32> = vs_INTERP0;
  u_xlat2 = (vec3<f32>(x_99, x_99, x_99) * vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_105 : vec3<f32> = u_xlat0;
  let x_106 : vec4<f32> = u_xlat1;
  let x_108 : vec3<f32> = (x_105 * vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_111 : vec3<f32> = u_xlat0;
  let x_113 : vec4<f32> = u_xlat1;
  let x_116 : vec4<f32> = u_xlat3;
  let x_119 : vec3<f32> = ((vec3<f32>(x_111.x, x_111.z, x_111.y) * vec3<f32>(x_113.z, x_113.y, x_113.x)) + -(vec3<f32>(x_116.y, x_116.x, x_116.z)));
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : vec3<f32> = u_xlat2;
  let x_124 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_122.y, x_122.x, x_122.z), vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_128 : f32 = u_xlat18;
  u_xlatb18 = (x_128 < 0.0f);
  let x_130 : bool = u_xlatb18;
  u_xlat18 = select(1.0f, -1.0f, x_130);
  let x_134 : f32 = u_xlat0.x;
  let x_136 : f32 = u_xlat2.x;
  u_xlat19 = (x_134 * x_136);
  let x_139 : f32 = u_xlat2.z;
  let x_141 : f32 = u_xlat0.y;
  let x_143 : f32 = u_xlat19;
  u_xlat3.z = ((x_139 * x_141) + -(x_143));
  let x_147 : vec3<f32> = u_xlat0;
  let x_156 : vec4<f32> = x_152.x_MainLightPosition;
  u_xlat0.y = dot(vec3<f32>(x_147.y, x_147.z, x_147.x), vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_161 : f32 = u_xlat1.z;
  let x_163 : f32 = u_xlat2.z;
  u_xlat19 = (x_161 * x_163);
  let x_166 : f32 = u_xlat1.y;
  let x_168 : f32 = u_xlat2.x;
  let x_170 : f32 = u_xlat19;
  u_xlat3.y = ((x_166 * x_168) + -(x_170));
  let x_174 : vec4<f32> = u_xlat1;
  let x_177 : vec4<f32> = x_152.x_MainLightPosition;
  u_xlat0.z = dot(vec3<f32>(x_174.z, x_174.x, x_174.y), vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_181 : vec3<f32> = u_xlat2;
  let x_183 : vec4<f32> = x_152.x_MainLightPosition;
  u_xlat0.x = dot(x_181, vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : f32 = u_xlat18;
  let x_189 : vec4<f32> = u_xlat3;
  let x_191 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat1;
  let x_196 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_194.x, x_194.y, x_194.z), vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : f32 = u_xlat18;
  u_xlat18 = max(x_199, 1.17549435e-38f);
  let x_202 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_202);
  let x_204 : f32 = u_xlat18;
  let x_206 : vec4<f32> = u_xlat1;
  let x_208 : vec3<f32> = (vec3<f32>(x_204, x_204, x_204) * vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_208.z, x_209.w);
  let x_211 : vec4<f32> = u_xlat1;
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_220 : vec4<f32> = u_xlat1;
  let x_223 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_220.x, x_220.y, x_220.z, x_220.x));
  u_xlatb1 = vec3<bool>(x_223.x, x_223.y, x_223.z);
  let x_236 : vec4<f32> = vs_INTERP1;
  let x_240 : f32 = x_152.x_GlobalMipBias.x;
  let x_241 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_236.x, x_236.y), x_240);
  u_xlat3 = x_241;
  let x_243 : bool = u_xlatb1.x;
  if (x_243) {
    let x_249 : f32 = u_xlat3.z;
    x_245 = x_249;
  } else {
    let x_252 : f32 = u_xlat3.x;
    x_245 = x_252;
  }
  let x_253 : f32 = x_245;
  u_xlat1.x = x_253;
  let x_256 : bool = u_xlatb1.y;
  if (x_256) {
    let x_261 : f32 = u_xlat3.y;
    x_257 = x_261;
  } else {
    let x_264 : f32 = u_xlat3.w;
    x_257 = x_264;
  }
  let x_265 : f32 = x_257;
  u_xlat1.y = x_265;
  let x_267 : vec3<f32> = u_xlat2;
  let x_269 : vec4<f32> = u_xlat1;
  let x_271 : vec2<f32> = (vec2<f32>(x_267.x, x_267.y) * vec2<f32>(x_269.x, x_269.y));
  let x_272 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
  let x_275 : f32 = u_xlat1.y;
  let x_277 : f32 = u_xlat1.x;
  u_xlat18 = (x_275 + x_277);
  let x_285 : vec4<f32> = vs_INTERP1;
  let x_288 : f32 = x_152.x_GlobalMipBias.x;
  let x_289 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_285.x, x_285.y), x_288);
  u_xlat4 = x_289;
  let x_291 : bool = u_xlatb1.z;
  if (x_291) {
    let x_296 : f32 = u_xlat4.y;
    x_292 = x_296;
  } else {
    let x_299 : f32 = u_xlat4.x;
    x_292 = x_299;
  }
  let x_300 : f32 = x_292;
  u_xlat1.x = x_300;
  let x_303 : f32 = u_xlat1.x;
  let x_305 : f32 = u_xlat2.z;
  let x_307 : f32 = u_xlat18;
  u_xlat1.y = ((x_303 * x_305) + x_307);
  u_xlat1.x = 1.0f;
  u_xlat1.z = 1.0f;
  u_xlat1.w = 1.0f;
  let x_313 : vec4<f32> = u_xlat1;
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_313.y, x_313.z, x_313.z), vec3<f32>(x_315.y, x_315.z, x_315.z));
  let x_318 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_318);
  let x_320 : f32 = u_xlat18;
  let x_322 : vec4<f32> = u_xlat1;
  let x_324 : vec3<f32> = (vec3<f32>(x_320, x_320, x_320) * vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : vec4<f32> = u_xlat1;
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_327.y, x_327.z, x_327.y) * vec3<f32>(x_329.z, x_329.z, x_329.y));
  let x_333 : f32 = u_xlat1.z;
  let x_335 : f32 = u_xlat1.z;
  let x_338 : f32 = u_xlat2.z;
  u_xlat18 = ((x_333 * x_335) + -(x_338));
  let x_344 : vec4<f32> = x_29.unity_SHBr;
  let x_345 : vec3<f32> = u_xlat2;
  u_xlat5.x = dot(x_344, vec4<f32>(x_345.x, x_345.x, x_345.y, x_345.y));
  let x_351 : vec4<f32> = x_29.unity_SHBg;
  let x_352 : vec3<f32> = u_xlat2;
  u_xlat5.y = dot(x_351, vec4<f32>(x_352.x, x_352.x, x_352.y, x_352.y));
  let x_358 : vec4<f32> = x_29.unity_SHBb;
  let x_359 : vec3<f32> = u_xlat2;
  u_xlat5.z = dot(x_358, vec4<f32>(x_359.x, x_359.x, x_359.y, x_359.y));
  let x_365 : vec4<f32> = x_29.unity_SHC;
  let x_367 : f32 = u_xlat18;
  let x_370 : vec3<f32> = u_xlat5;
  u_xlat2 = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367, x_367, x_367)) + x_370);
  let x_374 : vec4<f32> = x_29.unity_SHAr;
  let x_376 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(vec4<f32>(x_374.y, x_374.x, x_374.z, x_374.w), vec4<f32>(x_376.y, x_376.z, x_376.z, x_376.w));
  let x_382 : vec4<f32> = x_29.unity_SHAg;
  let x_384 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(vec4<f32>(x_382.y, x_382.x, x_382.z, x_382.w), vec4<f32>(x_384.y, x_384.z, x_384.z, x_384.w));
  let x_390 : vec4<f32> = x_29.unity_SHAb;
  let x_391 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_390, x_391);
  let x_394 : vec3<f32> = u_xlat2;
  let x_395 : vec3<f32> = u_xlat5;
  let x_396 : vec3<f32> = (x_394 + x_395);
  let x_397 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat1;
  let x_402 : vec3<f32> = max(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat1;
  let x_411 : f32 = x_409.Vector1_5f4b185241524942830132fc71554a33;
  let x_413 : f32 = x_409.Vector1_5f4b185241524942830132fc71554a33;
  let x_415 : f32 = x_409.Vector1_5f4b185241524942830132fc71554a33;
  let x_416 : vec3<f32> = vec3<f32>(x_411, x_413, x_415);
  let x_421 : vec3<f32> = (vec3<f32>(x_405.x, x_405.y, x_405.z) * vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec3<f32> = u_xlat0;
  let x_425 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_424, x_425);
  let x_427 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_427);
  let x_429 : f32 = u_xlat18;
  let x_431 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_429, x_429, x_429) * x_431);
  let x_434 : vec3<f32> = u_xlat0;
  let x_436 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_434.x, x_434.y, x_434.z, x_434.x));
  u_xlatb2 = vec3<bool>(x_436.x, x_436.y, x_436.z);
  let x_438 : vec3<f32> = u_xlat0;
  let x_439 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_438 * x_439);
  let x_442 : bool = u_xlatb2.x;
  if (x_442) {
    let x_447 : f32 = u_xlat3.z;
    x_443 = x_447;
  } else {
    let x_450 : f32 = u_xlat3.x;
    x_443 = x_450;
  }
  let x_451 : f32 = x_443;
  u_xlat2.x = x_451;
  let x_454 : bool = u_xlatb2.y;
  if (x_454) {
    let x_459 : f32 = u_xlat3.y;
    x_455 = x_459;
  } else {
    let x_462 : f32 = u_xlat3.w;
    x_455 = x_462;
  }
  let x_463 : f32 = x_455;
  u_xlat2.y = x_463;
  let x_466 : bool = u_xlatb2.z;
  if (x_466) {
    let x_471 : f32 = u_xlat4.y;
    x_467 = x_471;
  } else {
    let x_474 : f32 = u_xlat4.x;
    x_467 = x_474;
  }
  let x_475 : f32 = x_467;
  u_xlat18 = x_475;
  let x_476 : vec3<f32> = u_xlat0;
  let x_478 : vec3<f32> = u_xlat2;
  let x_480 : vec2<f32> = (vec2<f32>(x_476.x, x_476.y) * vec2<f32>(x_478.x, x_478.y));
  let x_481 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_480.x, x_480.y, x_481.z);
  let x_484 : f32 = u_xlat0.y;
  let x_486 : f32 = u_xlat0.x;
  u_xlat0.x = (x_484 + x_486);
  let x_489 : f32 = u_xlat18;
  let x_491 : f32 = u_xlat0.z;
  let x_494 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_489 * x_491) + x_494);
  let x_498 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_498);
  let x_503 : f32 = x_409.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_503 * 0.5f);
  let x_508 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_508, 0.00100000004749745131f);
  let x_513 : f32 = u_xlat0.x;
  let x_515 : f32 = u_xlat6.x;
  u_xlat0.x = (x_513 * x_515);
  let x_519 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_519);
  let x_523 : vec3<f32> = vs_INTERP2;
  let x_527 : vec3<f32> = x_152.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_523) + x_527);
  let x_529 : vec3<f32> = u_xlat6;
  let x_530 : vec3<f32> = u_xlat6;
  u_xlat19 = dot(x_529, x_530);
  let x_532 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_532);
  let x_534 : vec3<f32> = u_xlat6;
  let x_535 : f32 = u_xlat19;
  u_xlat6 = (x_534 * vec3<f32>(x_535, x_535, x_535));
  let x_541 : f32 = x_152.unity_OrthoParams.w;
  u_xlatb19 = (x_541 == 0.0f);
  let x_543 : bool = u_xlatb19;
  if (x_543) {
    let x_548 : f32 = u_xlat6.x;
    x_544 = x_548;
  } else {
    let x_552 : f32 = x_152.unity_MatrixV[0i].z;
    x_544 = x_552;
  }
  let x_553 : f32 = x_544;
  u_xlat2.x = x_553;
  let x_555 : bool = u_xlatb19;
  if (x_555) {
    let x_560 : f32 = u_xlat6.y;
    x_556 = x_560;
  } else {
    let x_563 : f32 = x_152.unity_MatrixV[1i].z;
    x_556 = x_563;
  }
  let x_564 : f32 = x_556;
  u_xlat2.y = x_564;
  let x_566 : bool = u_xlatb19;
  if (x_566) {
    let x_571 : f32 = u_xlat6.z;
    x_567 = x_571;
  } else {
    let x_574 : f32 = x_152.unity_MatrixV[2i].z;
    x_567 = x_574;
  }
  let x_575 : f32 = x_567;
  u_xlat2.z = x_575;
  let x_577 : vec3<f32> = u_xlat2;
  let x_578 : vec3<f32> = u_xlat2;
  u_xlat6.x = dot(x_577, x_578);
  let x_582 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_582);
  let x_585 : vec3<f32> = u_xlat6;
  let x_587 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_585.x, x_585.x, x_585.x) * x_587);
  let x_589 : vec3<f32> = u_xlat6;
  let x_591 : vec4<f32> = x_152.x_MainLightPosition;
  u_xlat6.x = dot(x_589, -(vec3<f32>(x_591.x, x_591.y, x_591.z)));
  let x_597 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_597, 0.0f, 1.0f);
  let x_601 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_601);
  let x_605 : f32 = u_xlat6.x;
  u_xlat6.x = (x_605 * 150.0f);
  let x_610 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_610);
  let x_614 : f32 = u_xlat6.x;
  u_xlat6.x = (x_614 + 1.0f);
  let x_618 : f32 = u_xlat0.x;
  let x_620 : f32 = u_xlat6.x;
  u_xlat0.x = (x_618 * x_620);
  let x_624 : vec4<f32> = x_152.x_MainLightColor;
  let x_626 : vec3<f32> = u_xlat0;
  let x_629 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(x_626.x, x_626.x, x_626.x)) + vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_634 : vec3<f32> = u_xlat0;
  let x_636 : vec4<f32> = x_409.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_638 : vec3<f32> = (x_634 * vec3<f32>(x_636.x, x_636.y, x_636.z));
  let x_639 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
  let x_643 : f32 = x_152.x_BA_CloudData.w;
  u_xlat0.x = (-(x_643) + 1.0f);
  let x_648 : f32 = u_xlat0.x;
  let x_651 : f32 = u_xlat4.z;
  u_xlat0.x = (-(x_648) + x_651);
  let x_655 : f32 = u_xlat4.w;
  u_xlat6.x = (-(x_655) + 1.0f);
  let x_660 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_660);
  let x_664 : f32 = u_xlat6.x;
  let x_666 : f32 = x_409.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_664 * x_666);
  let x_670 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_670);
  let x_674 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_674) + 1.0f);
  let x_679 : f32 = u_xlat0.x;
  u_xlat0.x = (x_679 * 10.0f);
  let x_684 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_684, 0.0f, 1.0f);
  let x_689 : f32 = u_xlat0.x;
  u_xlat12 = ((x_689 * -2.0f) + 3.0f);
  let x_695 : f32 = u_xlat0.x;
  let x_697 : f32 = u_xlat0.x;
  u_xlat0.x = (x_695 * x_697);
  let x_701 : f32 = u_xlat0.x;
  let x_702 : f32 = u_xlat12;
  u_xlat0.x = (x_701 * x_702);
  let x_706 : f32 = u_xlat0.x;
  let x_708 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_706, x_708);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec4<f32>, @location(3) vs_INTERP3_param : vec3<f32>, @location(1) vs_INTERP1_param : vec4<f32>, @location(2) vs_INTERP2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


