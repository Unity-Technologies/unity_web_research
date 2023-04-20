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
  x_ProjectionParams : vec4<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(192) */
  x_BA_SkyboxRatio : f32,
  /* @offset(208) */
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

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlat19 : f32;

@group(1) @binding(0) var<uniform> x_154 : PGlobals;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(2) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP1 : vec4<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat13 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_429 : UnityPerMaterial;

var<private> u_xlatb4 : vec3<bool>;

var<private> vs_INTERP2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(3) var samplerTexture2D_3DC46A50 : sampler;

var<private> u_xlat12 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_250 : f32;
  var x_262 : f32;
  var x_312 : f32;
  var x_463 : f32;
  var x_475 : f32;
  var x_487 : f32;
  var x_577 : vec3<f32>;
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
  let x_103 : vec3<f32> = (vec3<f32>(x_99, x_99, x_99) * vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : vec3<f32> = u_xlat0;
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec3<f32> = (x_107 * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_113 : vec3<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat1;
  let x_118 : vec4<f32> = u_xlat3;
  let x_121 : vec3<f32> = ((vec3<f32>(x_113.x, x_113.z, x_113.y) * vec3<f32>(x_115.z, x_115.y, x_115.x)) + -(vec3<f32>(x_118.y, x_118.x, x_118.z)));
  let x_122 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat2;
  let x_126 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_124.y, x_124.x, x_124.z), vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_130 : f32 = u_xlat18;
  u_xlatb18 = (x_130 < 0.0f);
  let x_132 : bool = u_xlatb18;
  u_xlat18 = select(1.0f, -1.0f, x_132);
  let x_136 : f32 = u_xlat0.x;
  let x_138 : f32 = u_xlat2.x;
  u_xlat19 = (x_136 * x_138);
  let x_141 : f32 = u_xlat2.z;
  let x_143 : f32 = u_xlat0.y;
  let x_145 : f32 = u_xlat19;
  u_xlat3.z = ((x_141 * x_143) + -(x_145));
  let x_149 : vec3<f32> = u_xlat0;
  let x_158 : vec4<f32> = x_154.x_MainLightPosition;
  u_xlat0.y = dot(vec3<f32>(x_149.y, x_149.z, x_149.x), vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_163 : f32 = u_xlat1.z;
  let x_165 : f32 = u_xlat2.z;
  u_xlat19 = (x_163 * x_165);
  let x_168 : f32 = u_xlat1.y;
  let x_170 : f32 = u_xlat2.x;
  let x_172 : f32 = u_xlat19;
  u_xlat3.y = ((x_168 * x_170) + -(x_172));
  let x_176 : vec4<f32> = u_xlat1;
  let x_179 : vec4<f32> = x_154.x_MainLightPosition;
  u_xlat0.z = dot(vec3<f32>(x_176.z, x_176.x, x_176.y), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_183 : vec4<f32> = u_xlat2;
  let x_186 : vec4<f32> = x_154.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_190 : f32 = u_xlat18;
  let x_192 : vec4<f32> = u_xlat3;
  let x_194 : vec3<f32> = (vec3<f32>(x_190, x_190, x_190) * vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_195 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_197 : vec4<f32> = u_xlat1;
  let x_199 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : f32 = u_xlat18;
  u_xlat18 = max(x_202, 1.17549435e-38f);
  let x_205 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_205);
  let x_207 : f32 = u_xlat18;
  let x_209 : vec4<f32> = u_xlat1;
  let x_211 : vec3<f32> = (vec3<f32>(x_207, x_207, x_207) * vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : vec4<f32> = u_xlat1;
  let x_216 : vec4<f32> = u_xlat1;
  let x_218 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) * vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_225 : vec4<f32> = u_xlat1;
  let x_228 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_225.x, x_225.y, x_225.z, x_225.x));
  u_xlatb1 = vec3<bool>(x_228.x, x_228.y, x_228.z);
  let x_241 : vec4<f32> = vs_INTERP1;
  let x_245 : f32 = x_154.x_GlobalMipBias.x;
  let x_246 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_241.x, x_241.y), x_245);
  u_xlat3 = x_246;
  let x_248 : bool = u_xlatb1.x;
  if (x_248) {
    let x_254 : f32 = u_xlat3.z;
    x_250 = x_254;
  } else {
    let x_257 : f32 = u_xlat3.x;
    x_250 = x_257;
  }
  let x_258 : f32 = x_250;
  u_xlat1.x = x_258;
  let x_261 : bool = u_xlatb1.y;
  if (x_261) {
    let x_266 : f32 = u_xlat3.y;
    x_262 = x_266;
  } else {
    let x_269 : f32 = u_xlat3.w;
    x_262 = x_269;
  }
  let x_270 : f32 = x_262;
  u_xlat1.y = x_270;
  let x_272 : vec4<f32> = u_xlat2;
  let x_274 : vec4<f32> = u_xlat1;
  let x_276 : vec2<f32> = (vec2<f32>(x_272.x, x_272.y) * vec2<f32>(x_274.x, x_274.y));
  let x_277 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
  let x_280 : f32 = u_xlat1.y;
  let x_282 : f32 = u_xlat1.x;
  u_xlat18 = (x_280 + x_282);
  let x_284 : vec4<f32> = u_xlat3;
  let x_286 : vec4<f32> = u_xlat3;
  let x_288 : vec2<f32> = (vec2<f32>(x_284.z, x_284.w) + vec2<f32>(x_286.x, x_286.y));
  let x_289 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_288.x, x_288.y, x_289.z, x_289.w);
  let x_292 : f32 = u_xlat1.y;
  let x_294 : f32 = u_xlat1.x;
  u_xlat1.x = (x_292 + x_294);
  let x_299 : f32 = u_xlat1.x;
  u_xlat7 = (x_299 * 0.25f);
  let x_303 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_303) * 0.25f) + 1.0f);
  let x_311 : bool = u_xlatb1.z;
  if (x_311) {
    let x_315 : f32 = u_xlat7;
    x_312 = x_315;
  } else {
    let x_318 : f32 = u_xlat1.x;
    x_312 = x_318;
  }
  let x_319 : f32 = x_312;
  u_xlat13.x = x_319;
  let x_322 : f32 = u_xlat13.x;
  let x_324 : f32 = u_xlat2.z;
  let x_326 : f32 = u_xlat18;
  u_xlat2.y = ((x_322 * x_324) + x_326);
  u_xlat2.x = 1.0f;
  u_xlat2.z = 1.0f;
  u_xlat2.w = 1.0f;
  let x_332 : vec4<f32> = u_xlat2;
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_332.y, x_332.z, x_332.z), vec3<f32>(x_334.y, x_334.z, x_334.z));
  let x_337 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_337);
  let x_339 : f32 = u_xlat18;
  let x_341 : vec4<f32> = u_xlat2;
  let x_343 : vec3<f32> = (vec3<f32>(x_339, x_339, x_339) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_347 : vec4<f32> = u_xlat2;
  let x_349 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_347.y, x_347.z, x_347.y) * vec3<f32>(x_349.z, x_349.z, x_349.y));
  let x_353 : f32 = u_xlat2.z;
  let x_355 : f32 = u_xlat2.z;
  let x_358 : f32 = u_xlat4.z;
  u_xlat18 = ((x_353 * x_355) + -(x_358));
  let x_364 : vec4<f32> = x_29.unity_SHBr;
  let x_365 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_364, vec4<f32>(x_365.x, x_365.x, x_365.y, x_365.y));
  let x_371 : vec4<f32> = x_29.unity_SHBg;
  let x_372 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_371, vec4<f32>(x_372.x, x_372.x, x_372.y, x_372.y));
  let x_378 : vec4<f32> = x_29.unity_SHBb;
  let x_379 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_378, vec4<f32>(x_379.x, x_379.x, x_379.y, x_379.y));
  let x_385 : vec4<f32> = x_29.unity_SHC;
  let x_387 : f32 = u_xlat18;
  let x_390 : vec3<f32> = u_xlat5;
  u_xlat4 = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387, x_387, x_387)) + x_390);
  let x_394 : vec4<f32> = x_29.unity_SHAr;
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(vec4<f32>(x_394.y, x_394.x, x_394.z, x_394.w), vec4<f32>(x_396.y, x_396.z, x_396.z, x_396.w));
  let x_402 : vec4<f32> = x_29.unity_SHAg;
  let x_404 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(vec4<f32>(x_402.y, x_402.x, x_402.z, x_402.w), vec4<f32>(x_404.y, x_404.z, x_404.z, x_404.w));
  let x_410 : vec4<f32> = x_29.unity_SHAb;
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_410, x_411);
  let x_414 : vec3<f32> = u_xlat4;
  let x_415 : vec3<f32> = u_xlat5;
  let x_416 : vec3<f32> = (x_414 + x_415);
  let x_417 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat2;
  let x_422 : vec3<f32> = max(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_423 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat2;
  let x_431 : f32 = x_429.Vector1_5f4b185241524942830132fc71554a33;
  let x_433 : f32 = x_429.Vector1_5f4b185241524942830132fc71554a33;
  let x_435 : f32 = x_429.Vector1_5f4b185241524942830132fc71554a33;
  let x_436 : vec3<f32> = vec3<f32>(x_431, x_433, x_435);
  let x_441 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_442 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec3<f32> = u_xlat0;
  let x_445 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_444, x_445);
  let x_447 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_447);
  let x_449 : f32 = u_xlat18;
  let x_451 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_449, x_449, x_449) * x_451);
  let x_454 : vec3<f32> = u_xlat0;
  let x_456 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_454.x, x_454.y, x_454.z, x_454.x));
  u_xlatb4 = vec3<bool>(x_456.x, x_456.y, x_456.z);
  let x_458 : vec3<f32> = u_xlat0;
  let x_459 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_458 * x_459);
  let x_462 : bool = u_xlatb4.x;
  if (x_462) {
    let x_467 : f32 = u_xlat3.z;
    x_463 = x_467;
  } else {
    let x_470 : f32 = u_xlat3.x;
    x_463 = x_470;
  }
  let x_471 : f32 = x_463;
  u_xlat13.x = x_471;
  let x_474 : bool = u_xlatb4.y;
  if (x_474) {
    let x_479 : f32 = u_xlat3.y;
    x_475 = x_479;
  } else {
    let x_482 : f32 = u_xlat3.w;
    x_475 = x_482;
  }
  let x_483 : f32 = x_475;
  u_xlat13.y = x_483;
  let x_486 : bool = u_xlatb4.z;
  if (x_486) {
    let x_490 : f32 = u_xlat7;
    x_487 = x_490;
  } else {
    let x_493 : f32 = u_xlat1.x;
    x_487 = x_493;
  }
  let x_494 : f32 = x_487;
  u_xlat18 = x_494;
  let x_495 : vec3<f32> = u_xlat0;
  let x_497 : vec2<f32> = u_xlat13;
  let x_498 : vec2<f32> = (vec2<f32>(x_495.x, x_495.y) * x_497);
  let x_499 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_498.x, x_498.y, x_499.z);
  let x_502 : f32 = u_xlat0.y;
  let x_504 : f32 = u_xlat0.x;
  u_xlat0.x = (x_502 + x_504);
  let x_507 : f32 = u_xlat18;
  let x_509 : f32 = u_xlat0.z;
  let x_512 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_507 * x_509) + x_512);
  let x_516 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_516);
  let x_521 : f32 = x_429.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_521 * 0.5f);
  let x_526 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_526, 0.00100000004749745131f);
  let x_531 : f32 = u_xlat0.x;
  let x_533 : f32 = u_xlat6.x;
  u_xlat0.x = (x_531 * x_533);
  let x_537 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_537);
  let x_541 : vec3<f32> = vs_INTERP2;
  let x_545 : vec3<f32> = x_154.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_541) + x_545);
  let x_547 : vec3<f32> = u_xlat6;
  let x_548 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_547, x_548);
  let x_552 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_552);
  let x_555 : vec3<f32> = u_xlat6;
  let x_556 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_555 * vec3<f32>(x_556.x, x_556.x, x_556.x));
  let x_561 : f32 = x_154.unity_OrthoParams.w;
  u_xlatb1.x = (x_561 == 0.0f);
  let x_566 : f32 = x_154.unity_MatrixV[0i].z;
  u_xlat3.x = x_566;
  let x_569 : f32 = x_154.unity_MatrixV[1i].z;
  u_xlat3.y = x_569;
  let x_572 : f32 = x_154.unity_MatrixV[2i].z;
  u_xlat3.z = x_572;
  let x_575 : bool = u_xlatb1.x;
  if (x_575) {
    let x_580 : vec3<f32> = u_xlat6;
    x_577 = x_580;
  } else {
    let x_582 : vec4<f32> = u_xlat3;
    x_577 = vec3<f32>(x_582.x, x_582.y, x_582.z);
  }
  let x_584 : vec3<f32> = x_577;
  u_xlat6 = x_584;
  let x_585 : vec3<f32> = u_xlat6;
  let x_586 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_585, x_586);
  let x_590 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_590);
  let x_593 : vec3<f32> = u_xlat6;
  let x_594 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_593 * vec3<f32>(x_594.x, x_594.x, x_594.x));
  let x_597 : vec3<f32> = u_xlat6;
  let x_599 : vec4<f32> = x_154.x_MainLightPosition;
  u_xlat6.x = dot(x_597, -(vec3<f32>(x_599.x, x_599.y, x_599.z)));
  let x_605 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_605, 0.0f, 1.0f);
  let x_609 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_609);
  let x_613 : f32 = u_xlat6.x;
  u_xlat6.x = (x_613 * 150.0f);
  let x_618 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_618);
  let x_622 : f32 = u_xlat6.x;
  u_xlat6.x = (x_622 + 1.0f);
  let x_626 : f32 = u_xlat0.x;
  let x_628 : f32 = u_xlat6.x;
  u_xlat0.x = (x_626 * x_628);
  let x_632 : vec4<f32> = x_154.x_MainLightColor;
  let x_634 : vec3<f32> = u_xlat0;
  let x_637 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_632.x, x_632.y, x_632.z) * vec3<f32>(x_634.x, x_634.x, x_634.x)) + vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_641 : vec4<f32> = x_429.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_643 : vec3<f32> = u_xlat0;
  let x_647 : vec4<f32> = x_154.unity_FogColor;
  u_xlat0 = ((vec3<f32>(x_641.x, x_641.y, x_641.z) * x_643) + -(vec3<f32>(x_647.x, x_647.y, x_647.z)));
  let x_651 : vec3<f32> = vs_INTERP2;
  let x_654 : vec4<f32> = x_29.unity_WorldToObject[1i];
  let x_656 : vec3<f32> = (vec3<f32>(x_651.y, x_651.y, x_651.y) * vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
  let x_660 : vec4<f32> = x_29.unity_WorldToObject[0i];
  let x_662 : vec3<f32> = vs_INTERP2;
  let x_665 : vec4<f32> = u_xlat1;
  let x_667 : vec3<f32> = ((vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_662.x, x_662.x, x_662.x)) + vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_671 : vec4<f32> = x_29.unity_WorldToObject[2i];
  let x_673 : vec3<f32> = vs_INTERP2;
  let x_676 : vec4<f32> = u_xlat1;
  let x_678 : vec3<f32> = ((vec3<f32>(x_671.x, x_671.y, x_671.z) * vec3<f32>(x_673.z, x_673.z, x_673.z)) + vec3<f32>(x_676.x, x_676.y, x_676.z));
  let x_679 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_678.x, x_678.y, x_678.z, x_679.w);
  let x_681 : vec4<f32> = u_xlat1;
  let x_684 : vec4<f32> = x_29.unity_WorldToObject[3i];
  let x_686 : vec3<f32> = (vec3<f32>(x_681.x, x_681.y, x_681.z) + vec3<f32>(x_684.x, x_684.y, x_684.z));
  let x_687 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec4<f32> = u_xlat1;
  let x_692 : vec4<f32> = x_29.unity_ObjectToWorld[1i];
  let x_694 : vec3<f32> = (vec3<f32>(x_689.y, x_689.y, x_689.y) * vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_698 : vec4<f32> = x_29.unity_ObjectToWorld[0i];
  let x_700 : vec4<f32> = u_xlat1;
  let x_703 : vec4<f32> = u_xlat2;
  let x_705 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(x_700.x, x_700.x, x_700.x)) + vec3<f32>(x_703.x, x_703.y, x_703.z));
  let x_706 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_705.z);
  let x_709 : vec4<f32> = x_29.unity_ObjectToWorld[2i];
  let x_711 : vec4<f32> = u_xlat1;
  let x_714 : vec4<f32> = u_xlat1;
  let x_716 : vec3<f32> = ((vec3<f32>(x_709.x, x_709.y, x_709.z) * vec3<f32>(x_711.z, x_711.z, x_711.z)) + vec3<f32>(x_714.x, x_714.y, x_714.w));
  let x_717 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec4<f32> = u_xlat1;
  let x_722 : vec4<f32> = x_29.unity_ObjectToWorld[3i];
  let x_724 : vec3<f32> = (vec3<f32>(x_719.x, x_719.y, x_719.z) + vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_728 : f32 = u_xlat1.y;
  let x_730 : f32 = x_154.unity_MatrixV[1i].z;
  u_xlat18 = (x_728 * x_730);
  let x_733 : f32 = x_154.unity_MatrixV[0i].z;
  let x_735 : f32 = u_xlat1.x;
  let x_737 : f32 = u_xlat18;
  u_xlat18 = ((x_733 * x_735) + x_737);
  let x_740 : f32 = x_154.unity_MatrixV[2i].z;
  let x_742 : f32 = u_xlat1.z;
  let x_744 : f32 = u_xlat18;
  u_xlat18 = ((x_740 * x_742) + x_744);
  let x_746 : f32 = u_xlat18;
  let x_748 : f32 = x_154.unity_MatrixV[3i].z;
  u_xlat18 = (x_746 + x_748);
  let x_750 : f32 = u_xlat18;
  let x_754 : f32 = x_154.x_ProjectionParams.y;
  u_xlat18 = (-(x_750) + -(x_754));
  let x_757 : f32 = u_xlat18;
  u_xlat18 = max(x_757, 0.0f);
  let x_759 : f32 = u_xlat18;
  let x_762 : f32 = x_154.unity_FogParams.x;
  u_xlat18 = (x_759 * x_762);
  let x_764 : f32 = u_xlat18;
  let x_765 : f32 = u_xlat18;
  u_xlat18 = (x_764 * -(x_765));
  let x_768 : f32 = u_xlat18;
  u_xlat18 = exp2(x_768);
  let x_770 : f32 = u_xlat18;
  u_xlat18 = (-(x_770) + 1.0f);
  let x_773 : f32 = u_xlat18;
  let x_776 : f32 = x_154.x_BA_SkyboxRatio;
  u_xlat18 = (x_773 / x_776);
  let x_778 : f32 = u_xlat18;
  let x_780 : f32 = u_xlat18;
  u_xlat18 = ((-(x_778) * x_780) + 1.0f);
  let x_783 : f32 = u_xlat18;
  u_xlat18 = exp2(x_783);
  let x_785 : f32 = u_xlat18;
  u_xlat18 = (-(x_785) + 1.0f);
  let x_789 : f32 = x_154.x_BA_SkyboxRatio;
  u_xlat1.x = (-(x_789) + 1.0f);
  let x_794 : f32 = x_154.x_WorldSpaceCameraPos.y;
  let x_797 : f32 = u_xlat1.x;
  let x_800 : f32 = vs_INTERP2.y;
  u_xlat1.x = ((-(x_794) * x_797) + x_800);
  let x_804 : f32 = x_429.Vector1_10DA9AB3;
  let x_807 : f32 = x_154.x_BA_SkyboxRatio;
  let x_810 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_804) * x_807) + x_810);
  let x_814 : f32 = x_154.x_BA_SkyboxRatio;
  let x_816 : f32 = x_429.Vector1_33982692;
  u_xlat7 = (x_814 * x_816);
  let x_818 : f32 = u_xlat7;
  u_xlat7 = max(x_818, 0.0f);
  let x_820 : f32 = u_xlat7;
  u_xlat7 = (1.0f / x_820);
  let x_822 : f32 = u_xlat7;
  let x_824 : f32 = u_xlat1.x;
  u_xlat1.x = (x_822 * x_824);
  let x_828 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_828, 0.0f, 1.0f);
  let x_832 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_832) + 1.0f);
  let x_837 : f32 = u_xlat1.x;
  let x_839 : f32 = u_xlat18;
  u_xlat18 = ((-(x_837) * x_839) + 1.0f);
  let x_842 : f32 = u_xlat18;
  u_xlat18 = min(x_842, 1.0f);
  let x_846 : f32 = u_xlat18;
  let x_848 : vec3<f32> = u_xlat0;
  let x_851 : vec4<f32> = x_154.unity_FogColor;
  let x_853 : vec3<f32> = ((vec3<f32>(x_846, x_846, x_846) * x_848) + vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_858 : f32 = x_154.x_BA_CloudData.w;
  u_xlat0.x = (-(x_858) + 1.0f);
  let x_867 : vec4<f32> = vs_INTERP1;
  let x_870 : f32 = x_154.x_GlobalMipBias.x;
  let x_871 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_867.x, x_867.y), x_870);
  let x_872 : vec2<f32> = vec2<f32>(x_871.z, x_871.w);
  let x_873 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_872.x, x_872.y, x_873.z);
  let x_876 : f32 = u_xlat0.x;
  let x_879 : f32 = u_xlat6.x;
  u_xlat0.x = (-(x_876) + x_879);
  let x_883 : f32 = u_xlat6.y;
  u_xlat6.x = (-(x_883) + 1.0f);
  let x_888 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_888);
  let x_892 : f32 = u_xlat6.x;
  let x_894 : f32 = x_429.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_892 * x_894);
  let x_898 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_898);
  let x_902 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_902) + 1.0f);
  let x_907 : f32 = u_xlat0.x;
  u_xlat0.x = (x_907 * 10.0f);
  let x_912 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_912, 0.0f, 1.0f);
  let x_917 : f32 = u_xlat0.x;
  u_xlat12 = ((x_917 * -2.0f) + 3.0f);
  let x_923 : f32 = u_xlat0.x;
  let x_925 : f32 = u_xlat0.x;
  u_xlat0.x = (x_923 * x_925);
  let x_929 : f32 = u_xlat0.x;
  let x_930 : f32 = u_xlat12;
  u_xlat0.x = (x_929 * x_930);
  let x_934 : f32 = u_xlat0.x;
  let x_936 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_934, x_936);
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


