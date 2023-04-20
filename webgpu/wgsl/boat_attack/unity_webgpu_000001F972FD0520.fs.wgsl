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
  unity_MatrixV : mat4x4<f32>,
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb0 : vec2<bool>;

var<private> vs_INTERP0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_43 : UnityPerDraw;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_INTERP3 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlat19 : f32;

@group(1) @binding(0) var<uniform> x_164 : PGlobals;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(1) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(4) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP1 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(2) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(5) var samplerTexture2D_3DC46A50 : sampler;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_421 : UnityPerMaterial;

var<private> u_xlatb2 : vec3<bool>;

var<private> vs_INTERP2 : vec3<f32>;

var<private> u_xlatb19 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat12 : vec2<f32>;

@group(0) @binding(0) var x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D : texture_2d<f32>;

@group(0) @binding(3) var sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D : sampler;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_257 : f32;
  var x_269 : f32;
  var x_304 : f32;
  var x_455 : f32;
  var x_467 : f32;
  var x_479 : f32;
  var x_556 : f32;
  var x_569 : f32;
  var x_580 : f32;
  var x_668 : f32;
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
  u_xlat2 = (vec3<f32>(x_111, x_111, x_111) * vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_117 : vec3<f32> = u_xlat0;
  let x_118 : vec4<f32> = u_xlat1;
  let x_120 : vec3<f32> = (x_117 * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_123 : vec3<f32> = u_xlat0;
  let x_125 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = u_xlat3;
  let x_131 : vec3<f32> = ((vec3<f32>(x_123.x, x_123.z, x_123.y) * vec3<f32>(x_125.z, x_125.y, x_125.x)) + -(vec3<f32>(x_128.y, x_128.x, x_128.z)));
  let x_132 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_134 : vec3<f32> = u_xlat2;
  let x_136 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_134.y, x_134.x, x_134.z), vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_140 : f32 = u_xlat18;
  u_xlatb18 = (x_140 < 0.0f);
  let x_142 : bool = u_xlatb18;
  u_xlat18 = select(1.0f, -1.0f, x_142);
  let x_146 : f32 = u_xlat0.x;
  let x_148 : f32 = u_xlat2.x;
  u_xlat19 = (x_146 * x_148);
  let x_151 : f32 = u_xlat2.z;
  let x_153 : f32 = u_xlat0.y;
  let x_155 : f32 = u_xlat19;
  u_xlat3.z = ((x_151 * x_153) + -(x_155));
  let x_159 : vec3<f32> = u_xlat0;
  let x_168 : vec4<f32> = x_164.x_MainLightPosition;
  u_xlat0.y = dot(vec3<f32>(x_159.y, x_159.z, x_159.x), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_173 : f32 = u_xlat1.z;
  let x_175 : f32 = u_xlat2.z;
  u_xlat19 = (x_173 * x_175);
  let x_178 : f32 = u_xlat1.y;
  let x_180 : f32 = u_xlat2.x;
  let x_182 : f32 = u_xlat19;
  u_xlat3.y = ((x_178 * x_180) + -(x_182));
  let x_186 : vec4<f32> = u_xlat1;
  let x_189 : vec4<f32> = x_164.x_MainLightPosition;
  u_xlat0.z = dot(vec3<f32>(x_186.z, x_186.x, x_186.y), vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : vec3<f32> = u_xlat2;
  let x_195 : vec4<f32> = x_164.x_MainLightPosition;
  u_xlat0.x = dot(x_193, vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : f32 = u_xlat18;
  let x_201 : vec4<f32> = u_xlat3;
  let x_203 : vec3<f32> = (vec3<f32>(x_199, x_199, x_199) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat1;
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_206.x, x_206.y, x_206.z), vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : f32 = u_xlat18;
  u_xlat18 = max(x_211, 1.17549435e-38f);
  let x_214 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_214);
  let x_216 : f32 = u_xlat18;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = (vec3<f32>(x_216, x_216, x_216) * vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat1;
  let x_225 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_232 : vec4<f32> = u_xlat1;
  let x_235 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_232.x, x_232.y, x_232.z, x_232.x));
  u_xlatb1 = vec3<bool>(x_235.x, x_235.y, x_235.z);
  let x_248 : vec4<f32> = vs_INTERP1;
  let x_252 : f32 = x_164.x_GlobalMipBias.x;
  let x_253 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_248.x, x_248.y), x_252);
  u_xlat3 = x_253;
  let x_255 : bool = u_xlatb1.x;
  if (x_255) {
    let x_261 : f32 = u_xlat3.z;
    x_257 = x_261;
  } else {
    let x_264 : f32 = u_xlat3.x;
    x_257 = x_264;
  }
  let x_265 : f32 = x_257;
  u_xlat1.x = x_265;
  let x_268 : bool = u_xlatb1.y;
  if (x_268) {
    let x_273 : f32 = u_xlat3.y;
    x_269 = x_273;
  } else {
    let x_276 : f32 = u_xlat3.w;
    x_269 = x_276;
  }
  let x_277 : f32 = x_269;
  u_xlat1.y = x_277;
  let x_279 : vec3<f32> = u_xlat2;
  let x_281 : vec4<f32> = u_xlat1;
  let x_283 : vec2<f32> = (vec2<f32>(x_279.x, x_279.y) * vec2<f32>(x_281.x, x_281.y));
  let x_284 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_283.x, x_283.y, x_284.z, x_284.w);
  let x_287 : f32 = u_xlat1.y;
  let x_289 : f32 = u_xlat1.x;
  u_xlat18 = (x_287 + x_289);
  let x_297 : vec4<f32> = vs_INTERP1;
  let x_300 : f32 = x_164.x_GlobalMipBias.x;
  let x_301 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_297.x, x_297.y), x_300);
  u_xlat4 = x_301;
  let x_303 : bool = u_xlatb1.z;
  if (x_303) {
    let x_308 : f32 = u_xlat4.y;
    x_304 = x_308;
  } else {
    let x_311 : f32 = u_xlat4.x;
    x_304 = x_311;
  }
  let x_312 : f32 = x_304;
  u_xlat1.x = x_312;
  let x_315 : f32 = u_xlat1.x;
  let x_317 : f32 = u_xlat2.z;
  let x_319 : f32 = u_xlat18;
  u_xlat1.y = ((x_315 * x_317) + x_319);
  u_xlat1.x = 1.0f;
  u_xlat1.z = 1.0f;
  u_xlat1.w = 1.0f;
  let x_325 : vec4<f32> = u_xlat1;
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_325.y, x_325.z, x_325.z), vec3<f32>(x_327.y, x_327.z, x_327.z));
  let x_330 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_330);
  let x_332 : f32 = u_xlat18;
  let x_334 : vec4<f32> = u_xlat1;
  let x_336 : vec3<f32> = (vec3<f32>(x_332, x_332, x_332) * vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec4<f32> = u_xlat1;
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_339.y, x_339.z, x_339.y) * vec3<f32>(x_341.z, x_341.z, x_341.y));
  let x_345 : f32 = u_xlat1.z;
  let x_347 : f32 = u_xlat1.z;
  let x_350 : f32 = u_xlat2.z;
  u_xlat18 = ((x_345 * x_347) + -(x_350));
  let x_356 : vec4<f32> = x_43.unity_SHBr;
  let x_357 : vec3<f32> = u_xlat2;
  u_xlat5.x = dot(x_356, vec4<f32>(x_357.x, x_357.x, x_357.y, x_357.y));
  let x_363 : vec4<f32> = x_43.unity_SHBg;
  let x_364 : vec3<f32> = u_xlat2;
  u_xlat5.y = dot(x_363, vec4<f32>(x_364.x, x_364.x, x_364.y, x_364.y));
  let x_370 : vec4<f32> = x_43.unity_SHBb;
  let x_371 : vec3<f32> = u_xlat2;
  u_xlat5.z = dot(x_370, vec4<f32>(x_371.x, x_371.x, x_371.y, x_371.y));
  let x_377 : vec4<f32> = x_43.unity_SHC;
  let x_379 : f32 = u_xlat18;
  let x_382 : vec3<f32> = u_xlat5;
  u_xlat2 = ((vec3<f32>(x_377.x, x_377.y, x_377.z) * vec3<f32>(x_379, x_379, x_379)) + x_382);
  let x_386 : vec4<f32> = x_43.unity_SHAr;
  let x_388 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(vec4<f32>(x_386.y, x_386.x, x_386.z, x_386.w), vec4<f32>(x_388.y, x_388.z, x_388.z, x_388.w));
  let x_394 : vec4<f32> = x_43.unity_SHAg;
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(vec4<f32>(x_394.y, x_394.x, x_394.z, x_394.w), vec4<f32>(x_396.y, x_396.z, x_396.z, x_396.w));
  let x_402 : vec4<f32> = x_43.unity_SHAb;
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_402, x_403);
  let x_406 : vec3<f32> = u_xlat2;
  let x_407 : vec3<f32> = u_xlat5;
  let x_408 : vec3<f32> = (x_406 + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat1;
  let x_414 : vec3<f32> = max(vec3<f32>(x_411.x, x_411.y, x_411.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_415 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat1;
  let x_423 : f32 = x_421.Vector1_5f4b185241524942830132fc71554a33;
  let x_425 : f32 = x_421.Vector1_5f4b185241524942830132fc71554a33;
  let x_427 : f32 = x_421.Vector1_5f4b185241524942830132fc71554a33;
  let x_428 : vec3<f32> = vec3<f32>(x_423, x_425, x_427);
  let x_433 : vec3<f32> = (vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_434 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec3<f32> = u_xlat0;
  let x_437 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_436, x_437);
  let x_439 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_439);
  let x_441 : f32 = u_xlat18;
  let x_443 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_441, x_441, x_441) * x_443);
  let x_446 : vec3<f32> = u_xlat0;
  let x_448 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_446.x, x_446.y, x_446.z, x_446.x));
  u_xlatb2 = vec3<bool>(x_448.x, x_448.y, x_448.z);
  let x_450 : vec3<f32> = u_xlat0;
  let x_451 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_450 * x_451);
  let x_454 : bool = u_xlatb2.x;
  if (x_454) {
    let x_459 : f32 = u_xlat3.z;
    x_455 = x_459;
  } else {
    let x_462 : f32 = u_xlat3.x;
    x_455 = x_462;
  }
  let x_463 : f32 = x_455;
  u_xlat2.x = x_463;
  let x_466 : bool = u_xlatb2.y;
  if (x_466) {
    let x_471 : f32 = u_xlat3.y;
    x_467 = x_471;
  } else {
    let x_474 : f32 = u_xlat3.w;
    x_467 = x_474;
  }
  let x_475 : f32 = x_467;
  u_xlat2.y = x_475;
  let x_478 : bool = u_xlatb2.z;
  if (x_478) {
    let x_483 : f32 = u_xlat4.y;
    x_479 = x_483;
  } else {
    let x_486 : f32 = u_xlat4.x;
    x_479 = x_486;
  }
  let x_487 : f32 = x_479;
  u_xlat18 = x_487;
  let x_488 : vec3<f32> = u_xlat0;
  let x_490 : vec3<f32> = u_xlat2;
  let x_492 : vec2<f32> = (vec2<f32>(x_488.x, x_488.y) * vec2<f32>(x_490.x, x_490.y));
  let x_493 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_492.x, x_492.y, x_493.z);
  let x_496 : f32 = u_xlat0.y;
  let x_498 : f32 = u_xlat0.x;
  u_xlat0.x = (x_496 + x_498);
  let x_501 : f32 = u_xlat18;
  let x_503 : f32 = u_xlat0.z;
  let x_506 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_501 * x_503) + x_506);
  let x_510 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_510);
  let x_514 : f32 = x_421.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_514 * 0.5f);
  let x_519 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_519, 0.00100000004749745131f);
  let x_524 : f32 = u_xlat0.x;
  let x_526 : f32 = u_xlat6.x;
  u_xlat0.x = (x_524 * x_526);
  let x_530 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_530);
  let x_534 : vec3<f32> = vs_INTERP2;
  let x_539 : vec3<f32> = x_164.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_534) + x_539);
  let x_541 : vec3<f32> = u_xlat6;
  let x_542 : vec3<f32> = u_xlat6;
  u_xlat19 = dot(x_541, x_542);
  let x_544 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_544);
  let x_546 : vec3<f32> = u_xlat6;
  let x_547 : f32 = u_xlat19;
  u_xlat6 = (x_546 * vec3<f32>(x_547, x_547, x_547));
  let x_553 : f32 = x_164.unity_OrthoParams.w;
  u_xlatb19 = (x_553 == 0.0f);
  let x_555 : bool = u_xlatb19;
  if (x_555) {
    let x_560 : f32 = u_xlat6.x;
    x_556 = x_560;
  } else {
    let x_565 : f32 = x_164.unity_MatrixV[0i].z;
    x_556 = x_565;
  }
  let x_566 : f32 = x_556;
  u_xlat2.x = x_566;
  let x_568 : bool = u_xlatb19;
  if (x_568) {
    let x_573 : f32 = u_xlat6.y;
    x_569 = x_573;
  } else {
    let x_576 : f32 = x_164.unity_MatrixV[1i].z;
    x_569 = x_576;
  }
  let x_577 : f32 = x_569;
  u_xlat2.y = x_577;
  let x_579 : bool = u_xlatb19;
  if (x_579) {
    let x_584 : f32 = u_xlat6.z;
    x_580 = x_584;
  } else {
    let x_587 : f32 = x_164.unity_MatrixV[2i].z;
    x_580 = x_587;
  }
  let x_588 : f32 = x_580;
  u_xlat2.z = x_588;
  let x_590 : vec3<f32> = u_xlat2;
  let x_591 : vec3<f32> = u_xlat2;
  u_xlat6.x = dot(x_590, x_591);
  let x_595 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_595);
  let x_598 : vec3<f32> = u_xlat6;
  let x_600 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec3<f32>(x_598.x, x_598.x, x_598.x) * x_600);
  let x_602 : vec3<f32> = u_xlat6;
  let x_604 : vec4<f32> = x_164.x_MainLightPosition;
  u_xlat6.x = dot(x_602, -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_610 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_610, 0.0f, 1.0f);
  let x_614 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_614);
  let x_618 : f32 = u_xlat6.x;
  u_xlat6.x = (x_618 * 150.0f);
  let x_623 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_623);
  let x_627 : f32 = u_xlat6.x;
  u_xlat6.x = (x_627 + 1.0f);
  let x_631 : f32 = u_xlat0.x;
  let x_633 : f32 = u_xlat6.x;
  u_xlat0.x = (x_631 * x_633);
  let x_637 : vec4<f32> = x_164.x_MainLightColor;
  let x_639 : vec3<f32> = u_xlat0;
  let x_642 : vec4<f32> = u_xlat1;
  u_xlat0 = ((vec3<f32>(x_637.x, x_637.y, x_637.z) * vec3<f32>(x_639.x, x_639.x, x_639.x)) + vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_647 : vec3<f32> = u_xlat0;
  let x_649 : vec4<f32> = x_421.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_651 : vec3<f32> = (x_647 * vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_656 : f32 = x_164.x_ProjectionParams.x;
  u_xlatb0.x = (x_656 < 0.0f);
  let x_660 : f32 = hlslcc_FragCoord.y;
  let x_663 : f32 = x_164.x_ScaledScreenParams.y;
  u_xlat6.x = (-(x_660) + x_663);
  let x_667 : bool = u_xlatb0.x;
  if (x_667) {
    let x_672 : f32 = u_xlat6.x;
    x_668 = x_672;
  } else {
    let x_675 : f32 = hlslcc_FragCoord.y;
    x_668 = x_675;
  }
  let x_676 : f32 = x_668;
  u_xlat0.y = x_676;
  let x_679 : f32 = hlslcc_FragCoord.x;
  u_xlat0.x = x_679;
  let x_681 : vec3<f32> = u_xlat0;
  let x_684 : vec4<f32> = x_164.x_ScaledScreenParams;
  let x_686 : vec2<f32> = (vec2<f32>(x_681.x, x_681.y) / vec2<f32>(x_684.x, x_684.y));
  let x_687 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_686.x, x_686.y, x_687.z);
  let x_690 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_690) + 1.0f);
  let x_694 : vec3<f32> = u_xlat0;
  let x_698 : vec4<f32> = x_164.x_ScreenParams;
  let x_700 : vec2<f32> = (vec2<f32>(x_694.x, x_694.z) * vec2<f32>(x_698.x, x_698.y));
  let x_701 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_700.x, x_700.y, x_701.z);
  let x_703 : vec3<f32> = u_xlat0;
  let x_705 : vec2<f32> = floor(vec2<f32>(x_703.x, x_703.y));
  let x_706 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_705.x, x_705.y, x_706.z);
  let x_711 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_714 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  u_xlat12.x = dot(vec3<f32>(x_711.x, x_711.y, x_711.z), vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_719 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_719);
  let x_724 : vec4<f32> = x_164.x_TimeParameters;
  let x_729 : vec2<f32> = (vec2<f32>(x_724.x, x_724.x) * vec2<f32>(0.01799999922513961792f, 0.31999999284744262695f));
  let x_730 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
  let x_732 : vec2<f32> = u_xlat12;
  let x_737 : vec4<f32> = u_xlat1;
  u_xlat12 = ((vec2<f32>(x_732.x, x_732.x) * vec2<f32>(0.32100000977516174316f, 0.32100000977516174316f)) + vec2<f32>(x_737.x, x_737.y));
  let x_740 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_740);
  let x_742 : vec2<f32> = u_xlat12;
  u_xlat12.x = dot(vec2<f32>(x_742.x, x_742.x), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_749 : vec2<f32> = u_xlat12;
  u_xlat12.y = dot(vec2<f32>(x_749.y, x_749.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_753 : vec2<f32> = u_xlat12;
  u_xlat12 = sin(x_753);
  let x_755 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_755 * vec2<f32>(43758.546875f, 43758.546875f));
  let x_759 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_759);
  let x_761 : vec2<f32> = u_xlat12;
  let x_763 : vec4<f32> = x_164.x_ScreenParams;
  let x_765 : vec2<f32> = (x_761 * vec2<f32>(x_763.x, x_763.y));
  let x_766 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
  let x_768 : vec3<f32> = u_xlat0;
  let x_770 : vec4<f32> = u_xlat1;
  let x_772 : vec2<f32> = (vec2<f32>(x_768.x, x_768.y) + vec2<f32>(x_770.x, x_770.y));
  let x_773 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_772.x, x_772.y, x_773.z);
  let x_775 : vec3<f32> = u_xlat0;
  let x_779 : vec2<f32> = (vec2<f32>(x_775.x, x_775.y) * vec2<f32>(0.00390625f, 0.00390625f));
  let x_780 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_779.x, x_779.y, x_780.z);
  let x_782 : vec3<f32> = u_xlat0;
  let x_784 : vec2<f32> = fract(vec2<f32>(x_782.x, x_782.y));
  let x_785 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_784.x, x_784.y, x_785.z);
  let x_792 : vec3<f32> = u_xlat0;
  let x_795 : f32 = x_164.x_GlobalMipBias.x;
  let x_796 : vec4<f32> = textureSampleBias(x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D, sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D, vec2<f32>(x_792.x, x_792.y), x_795);
  u_xlat0.x = x_796.y;
  let x_800 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_800 * 0.30000001192092895508f) + 0.80000001192092895508f);
  let x_807 : f32 = u_xlat0.x;
  let x_811 : f32 = x_164.x_BA_CloudData.w;
  u_xlat0.x = ((-(x_807) * x_811) + 1.0f);
  let x_816 : f32 = u_xlat0.x;
  let x_819 : f32 = u_xlat4.z;
  u_xlat0.x = (-(x_816) + x_819);
  let x_823 : f32 = u_xlat4.w;
  u_xlat6.x = (-(x_823) + 1.0f);
  let x_828 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_828);
  let x_832 : f32 = u_xlat6.x;
  let x_834 : f32 = x_421.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_832 * x_834);
  let x_838 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_838);
  let x_842 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_842) + 1.0f);
  let x_847 : f32 = u_xlat0.x;
  u_xlat0.x = (x_847 * 10.0f);
  let x_852 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_852, 0.0f, 1.0f);
  let x_856 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_856 * -2.0f) + 3.0f);
  let x_863 : f32 = u_xlat0.x;
  let x_865 : f32 = u_xlat0.x;
  u_xlat0.x = (x_863 * x_865);
  let x_869 : f32 = u_xlat0.x;
  let x_871 : f32 = u_xlat12.x;
  u_xlat0.x = (x_869 * x_871);
  let x_875 : f32 = u_xlat0.x;
  let x_877 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_875, x_877);
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


