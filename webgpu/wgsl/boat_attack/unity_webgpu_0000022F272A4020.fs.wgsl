struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightColor0 : vec4<f32>,
  x_SpecColor : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_FaceUVSpeedX : f32,
  x_FaceUVSpeedY : f32,
  @size(8)
  padding_1 : u32,
  x_FaceColor : vec4<f32>,
  x_OutlineSoftness : f32,
  x_OutlineUVSpeedX : f32,
  x_OutlineUVSpeedY : f32,
  @size(4)
  padding_2 : u32,
  x_OutlineColor : vec4<f32>,
  x_OutlineWidth : f32,
  x_Bevel : f32,
  x_BevelOffset : f32,
  x_BevelWidth : f32,
  x_BevelClamp : f32,
  x_BevelRoundness : f32,
  x_BumpOutline : f32,
  x_BumpFace : f32,
  x_ShaderFlags : f32,
  x_ScaleRatioA : f32,
  x_TextureWidth : f32,
  x_TextureHeight : f32,
  x_GradientScale : f32,
  x_FaceShininess : f32,
  x_OutlineShininess : f32,
}

var<private> vs_TEXCOORD6 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_22 : PGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_OutlineTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_OutlineTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_FaceTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_FaceTex : sampler;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat5 : f32;
  var u_xlatb9 : bool;
  var x_183 : f32;
  var u_xlatb5 : bool;
  var u_xlat12 : f32;
  var u_xlat7 : f32;
  var u_xlat11 : f32;
  var u_xlat6 : f32;
  var u_xlat14 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD6.x;
  let x_27 : f32 = x_22.x_BevelOffset;
  u_xlat0.x = (x_17 + x_27);
  let x_36 : f32 = x_22.x_TextureWidth;
  let x_39 : f32 = x_22.x_TextureHeight;
  let x_41 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_36, x_39));
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_41.x, x_41.y, x_42.z, x_42.w);
  u_xlat1.z = 0.0f;
  let x_48 : vec4<f32> = u_xlat1;
  let x_53 : vec4<f32> = vs_TEXCOORD0;
  u_xlat2 = (-(vec4<f32>(x_48.x, x_48.z, x_48.z, x_48.y)) + vec4<f32>(x_53.x, x_53.y, x_53.x, x_53.y));
  let x_56 : vec4<f32> = u_xlat1;
  let x_58 : vec4<f32> = vs_TEXCOORD0;
  u_xlat1 = (vec4<f32>(x_56.x, x_56.z, x_56.z, x_56.y) + vec4<f32>(x_58.x, x_58.y, x_58.x, x_58.y));
  let x_72 : vec4<f32> = u_xlat2;
  let x_74 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_72.x, x_72.y));
  u_xlat3.x = x_74.w;
  let x_81 : vec4<f32> = u_xlat2;
  let x_83 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_81.z, x_81.w));
  u_xlat3.z = x_83.w;
  let x_89 : vec4<f32> = u_xlat1;
  let x_91 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_89.x, x_89.y));
  u_xlat3.y = x_91.w;
  let x_98 : vec4<f32> = u_xlat1;
  let x_100 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_98.z, x_98.w));
  u_xlat3.w = x_100.w;
  let x_103 : vec4<f32> = u_xlat0;
  let x_105 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec4<f32>(x_103.x, x_103.x, x_103.x, x_103.x) + x_105);
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_107 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_113 : f32 = x_22.x_BevelWidth;
  let x_116 : f32 = x_22.x_OutlineWidth;
  u_xlat1.x = (x_113 + x_116);
  let x_120 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_120, 0.01f);
  let x_124 : vec4<f32> = u_xlat0;
  let x_125 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_124 / vec4<f32>(x_125.x, x_125.x, x_125.x, x_125.x));
  let x_129 : f32 = u_xlat1.x;
  let x_132 : f32 = x_22.x_Bevel;
  u_xlat1.x = (x_129 * x_132);
  let x_136 : f32 = u_xlat1.x;
  let x_139 : f32 = x_22.x_GradientScale;
  u_xlat1.x = (x_136 * x_139);
  let x_143 : f32 = u_xlat1.x;
  u_xlat1.x = (x_143 * -2.0f);
  let x_147 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_147 + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_151 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_151, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_155 : vec4<f32> = u_xlat0;
  u_xlat2 = ((x_155 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_162 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(abs(x_162)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_170 : f32 = x_22.x_ShaderFlags;
  u_xlat5 = (x_170 * 0.5f);
  let x_175 : f32 = u_xlat5;
  let x_176 : f32 = u_xlat5;
  u_xlatb9 = (x_175 >= -(x_176));
  let x_179 : f32 = u_xlat5;
  u_xlat5 = fract(abs(x_179));
  let x_182 : bool = u_xlatb9;
  if (x_182) {
    let x_186 : f32 = u_xlat5;
    x_183 = x_186;
  } else {
    let x_188 : f32 = u_xlat5;
    x_183 = -(x_188);
  }
  let x_190 : f32 = x_183;
  u_xlat5 = x_190;
  let x_192 : f32 = u_xlat5;
  u_xlatb5 = (x_192 >= 0.5f);
  let x_194 : bool = u_xlatb5;
  let x_195 : vec4<f32> = u_xlat2;
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = select(x_196, x_195, vec4<bool>(x_194, x_194, x_194, x_194));
  let x_200 : vec4<f32> = u_xlat0;
  u_xlat2 = (x_200 * vec4<f32>(1.570796013f, 1.570796013f, 1.570796013f, 1.570796013f));
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat2 = sin(x_204);
  let x_206 : vec4<f32> = u_xlat0;
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_206) + x_208);
  let x_212 : f32 = x_22.x_BevelRoundness;
  let x_214 : f32 = x_22.x_BevelRoundness;
  let x_216 : f32 = x_22.x_BevelRoundness;
  let x_218 : f32 = x_22.x_BevelRoundness;
  let x_219 : vec4<f32> = vec4<f32>(x_212, x_214, x_216, x_218);
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_219.x, x_219.y, x_219.z, x_219.w) * x_225) + x_227);
  let x_231 : f32 = x_22.x_BevelClamp;
  u_xlat5 = (-(x_231) + 1.0f);
  let x_234 : vec4<f32> = u_xlat0;
  let x_235 : f32 = u_xlat5;
  u_xlat0 = min(x_234, vec4<f32>(x_235, x_235, x_235, x_235));
  let x_238 : vec4<f32> = u_xlat1;
  let x_240 : vec4<f32> = u_xlat0;
  let x_242 : vec2<f32> = (vec2<f32>(x_238.x, x_238.x) * vec2<f32>(x_240.x, x_240.z));
  let x_243 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_242.x, x_243.y, x_242.y, x_243.w);
  let x_245 : vec4<f32> = u_xlat0;
  let x_247 : vec4<f32> = u_xlat1;
  let x_250 : vec4<f32> = u_xlat0;
  let x_253 : vec2<f32> = ((vec2<f32>(x_245.w, x_245.y) * vec2<f32>(x_247.x, x_247.x)) + -(vec2<f32>(x_250.z, x_250.x)));
  let x_254 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_254.x, x_253.x, x_253.y, x_254.w);
  u_xlat0.x = -1.0f;
  u_xlat0.w = 1.0f;
  let x_258 : vec4<f32> = u_xlat0;
  let x_260 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_258.x, x_258.y), vec2<f32>(x_260.x, x_260.y));
  let x_265 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_265);
  let x_269 : vec4<f32> = u_xlat0;
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec2<f32>(x_269.z, x_269.w), vec2<f32>(x_271.z, x_271.w));
  let x_274 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_274);
  let x_276 : f32 = u_xlat12;
  let x_278 : f32 = u_xlat0.z;
  u_xlat2.x = (x_276 * x_278);
  let x_281 : f32 = u_xlat12;
  let x_284 : vec2<f32> = (vec2<f32>(x_281, x_281) * vec2<f32>(1.0f, 0.0f));
  let x_285 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_285.x, x_284.x, x_284.y, x_285.w);
  u_xlat0.z = 0.0f;
  let x_288 : vec4<f32> = u_xlat1;
  let x_290 : vec4<f32> = u_xlat0;
  let x_292 : vec3<f32> = (vec3<f32>(x_288.x, x_288.x, x_288.x) * vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_292.x, x_292.y, x_292.z, x_293.w);
  let x_295 : vec4<f32> = u_xlat0;
  let x_297 : vec4<f32> = u_xlat2;
  let x_299 : vec3<f32> = (vec3<f32>(x_295.x, x_295.y, x_295.z) * vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat2;
  let x_304 : vec4<f32> = u_xlat0;
  let x_307 : vec4<f32> = u_xlat1;
  let x_310 : vec3<f32> = ((vec3<f32>(x_302.z, x_302.x, x_302.y) * vec3<f32>(x_304.y, x_304.z, x_304.x)) + -(vec3<f32>(x_307.x, x_307.y, x_307.z)));
  let x_311 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_315 : f32 = x_22.x_OutlineUVSpeedX;
  let x_318 : f32 = x_22.x_OutlineUVSpeedY;
  let x_323 : vec4<f32> = x_22.x_Time;
  let x_327 : vec2<f32> = vs_TEXCOORD1;
  let x_328 : vec2<f32> = ((vec2<f32>(x_315, x_318) * vec2<f32>(x_323.y, x_323.y)) + x_327);
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_328.x, x_328.y, x_329.z, x_329.w);
  let x_336 : vec4<f32> = u_xlat1;
  let x_338 : vec4<f32> = textureSample(x_OutlineTex, sampler_OutlineTex, vec2<f32>(x_336.x, x_336.y));
  u_xlat1 = x_338;
  let x_339 : vec4<f32> = u_xlat1;
  let x_343 : vec4<f32> = x_22.x_OutlineColor;
  let x_345 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_350 : f32 = vs_COLOR0.w;
  let x_352 : f32 = x_22.x_OutlineColor.w;
  u_xlat12 = (x_350 * x_352);
  let x_355 : f32 = u_xlat1.w;
  let x_356 : f32 = u_xlat12;
  u_xlat2.w = (x_355 * x_356);
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec4<f32> = u_xlat2;
  let x_363 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_361.w, x_361.w, x_361.w));
  let x_364 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_368 : f32 = x_22.x_FaceUVSpeedX;
  let x_371 : f32 = x_22.x_FaceUVSpeedY;
  let x_374 : vec4<f32> = x_22.x_Time;
  let x_377 : vec4<f32> = vs_TEXCOORD0;
  let x_379 : vec2<f32> = ((vec2<f32>(x_368, x_371) * vec2<f32>(x_374.y, x_374.y)) + vec2<f32>(x_377.z, x_377.w));
  let x_380 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
  let x_387 : vec4<f32> = u_xlat1;
  let x_389 : vec4<f32> = textureSample(x_FaceTex, sampler_FaceTex, vec2<f32>(x_387.x, x_387.y));
  u_xlat1 = x_389;
  let x_390 : vec4<f32> = vs_COLOR0;
  let x_393 : vec4<f32> = x_22.x_FaceColor;
  u_xlat3 = (x_390 * x_393);
  let x_395 : vec4<f32> = u_xlat1;
  let x_396 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_395 * x_396);
  let x_398 : vec4<f32> = u_xlat1;
  let x_400 : vec4<f32> = u_xlat1;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.w, x_398.w, x_398.w) * vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_405 : vec4<f32> = u_xlat1;
  let x_407 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_405) + x_407);
  let x_410 : f32 = x_22.x_OutlineWidth;
  let x_413 : f32 = x_22.x_ScaleRatioA;
  u_xlat12 = (x_410 * x_413);
  let x_415 : f32 = u_xlat12;
  let x_417 : f32 = vs_TEXCOORD6.y;
  u_xlat12 = (x_415 * x_417);
  let x_419 : f32 = u_xlat12;
  u_xlat3.x = min(x_419, 1.0f);
  let x_423 : f32 = u_xlat3.x;
  u_xlat3.x = sqrt(x_423);
  let x_430 : vec4<f32> = vs_TEXCOORD0;
  let x_432 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_430.x, x_430.y));
  u_xlat7 = x_432.w;
  let x_434 : f32 = u_xlat7;
  u_xlat7 = (-(x_434) + 0.5f);
  let x_437 : f32 = u_xlat7;
  let x_439 : f32 = vs_TEXCOORD6.x;
  u_xlat7 = (x_437 + -(x_439));
  let x_442 : f32 = u_xlat7;
  let x_444 : f32 = vs_TEXCOORD6.y;
  u_xlat7 = ((x_442 * x_444) + 0.5f);
  let x_448 : f32 = u_xlat12;
  let x_450 : f32 = u_xlat7;
  u_xlat11 = ((x_448 * 0.5f) + x_450);
  let x_452 : f32 = u_xlat11;
  u_xlat11 = clamp(x_452, 0.0f, 1.0f);
  let x_454 : f32 = u_xlat12;
  let x_457 : f32 = u_xlat7;
  u_xlat12 = ((-(x_454) * 0.5f) + x_457);
  let x_460 : f32 = u_xlat3.x;
  let x_461 : f32 = u_xlat11;
  u_xlat3.x = (x_460 * x_461);
  let x_464 : vec4<f32> = u_xlat3;
  let x_466 : vec4<f32> = u_xlat2;
  let x_468 : vec4<f32> = u_xlat1;
  u_xlat1 = ((vec4<f32>(x_464.x, x_464.x, x_464.x, x_464.x) * x_466) + x_468);
  let x_472 : f32 = x_22.x_OutlineSoftness;
  let x_474 : f32 = x_22.x_ScaleRatioA;
  u_xlat2.x = (x_472 * x_474);
  let x_479 : f32 = u_xlat2.x;
  let x_481 : f32 = vs_TEXCOORD6.y;
  u_xlat6 = (x_479 * x_481);
  let x_484 : f32 = u_xlat2.x;
  let x_486 : f32 = vs_TEXCOORD6.y;
  u_xlat2.x = ((x_484 * x_486) + 1.0f);
  let x_490 : f32 = u_xlat6;
  let x_492 : f32 = u_xlat12;
  u_xlat12 = ((x_490 * 0.5f) + x_492);
  let x_494 : f32 = u_xlat12;
  let x_496 : f32 = u_xlat2.x;
  u_xlat12 = (x_494 / x_496);
  let x_498 : f32 = u_xlat12;
  u_xlat12 = clamp(x_498, 0.0f, 1.0f);
  let x_500 : f32 = u_xlat12;
  u_xlat12 = (-(x_500) + 1.0f);
  let x_503 : f32 = u_xlat12;
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat1 = (vec4<f32>(x_503, x_503, x_503, x_503) * x_505);
  let x_509 : f32 = x_22.x_BumpFace;
  let x_513 : f32 = x_22.x_BumpOutline;
  u_xlat12 = (-(x_509) + x_513);
  let x_515 : f32 = u_xlat11;
  let x_516 : f32 = u_xlat12;
  let x_519 : f32 = x_22.x_BumpFace;
  u_xlat12 = ((x_515 * x_516) + x_519);
  let x_526 : vec4<f32> = vs_TEXCOORD0;
  let x_528 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_526.z, x_526.w));
  let x_529 : vec3<f32> = vec3<f32>(x_528.x, x_528.y, x_528.w);
  let x_530 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_533 : f32 = u_xlat2.z;
  let x_535 : f32 = u_xlat2.x;
  u_xlat2.x = (x_533 * x_535);
  let x_538 : vec4<f32> = u_xlat2;
  let x_543 : vec2<f32> = ((vec2<f32>(x_538.x, x_538.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_544 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
  let x_547 : vec4<f32> = u_xlat2;
  let x_549 : vec4<f32> = u_xlat2;
  u_xlat14 = dot(vec2<f32>(x_547.x, x_547.y), vec2<f32>(x_549.x, x_549.y));
  let x_552 : f32 = u_xlat14;
  u_xlat14 = min(x_552, 1.0f);
  let x_554 : f32 = u_xlat14;
  u_xlat14 = (-(x_554) + 1.0f);
  let x_557 : f32 = u_xlat14;
  u_xlat2.z = sqrt(x_557);
  let x_560 : vec4<f32> = u_xlat2;
  let x_562 : f32 = u_xlat12;
  let x_567 : vec3<f32> = ((vec3<f32>(x_560.x, x_560.y, x_560.z) * vec3<f32>(x_562, x_562, x_562)) + vec3<f32>(-0.0f, -0.0f, -1.0f));
  let x_568 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_570 : vec4<f32> = u_xlat1;
  let x_572 : vec4<f32> = u_xlat2;
  let x_576 : vec3<f32> = ((vec3<f32>(x_570.w, x_570.w, x_570.w) * vec3<f32>(x_572.x, x_572.y, x_572.z)) + vec3<f32>(0.0f, 0.0f, 1.0f));
  let x_577 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat0;
  let x_581 : vec4<f32> = u_xlat2;
  let x_584 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + -(vec3<f32>(x_581.x, x_581.y, x_581.z)));
  let x_585 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat0;
  let x_589 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_587.x, x_587.y, x_587.z), vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_592);
  let x_594 : f32 = u_xlat12;
  let x_596 : vec4<f32> = u_xlat0;
  let x_598 : vec3<f32> = (vec3<f32>(x_594, x_594, x_594) * vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_603 : vec3<f32> = vs_TEXCOORD2;
  let x_604 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_603, -(vec3<f32>(x_604.x, x_604.y, x_604.z)));
  let x_610 : vec3<f32> = vs_TEXCOORD3;
  let x_611 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_610, -(vec3<f32>(x_611.x, x_611.y, x_611.z)));
  let x_617 : vec3<f32> = vs_TEXCOORD4;
  let x_618 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_617, -(vec3<f32>(x_618.x, x_618.y, x_618.z)));
  let x_623 : vec4<f32> = u_xlat2;
  let x_625 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_623.x, x_623.y, x_623.z), vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_630 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_630);
  let x_633 : vec4<f32> = u_xlat0;
  let x_635 : vec4<f32> = u_xlat2;
  let x_637 : vec3<f32> = (vec3<f32>(x_633.x, x_633.x, x_633.x) * vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_641 : vec3<f32> = vs_TEXCOORD5;
  let x_646 : vec3<f32> = x_22.x_WorldSpaceCameraPos;
  let x_647 : vec3<f32> = (-(x_641) + x_646);
  let x_648 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat2;
  let x_652 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_650.x, x_650.y, x_650.z), vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_655 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_655);
  let x_657 : vec4<f32> = u_xlat2;
  let x_659 : f32 = u_xlat12;
  let x_664 : vec4<f32> = x_22.x_WorldSpaceLightPos0;
  let x_666 : vec3<f32> = ((vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(x_659, x_659, x_659)) + vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : vec4<f32> = u_xlat2;
  let x_671 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_669.x, x_669.y, x_669.z), vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_674);
  let x_676 : f32 = u_xlat12;
  let x_678 : vec4<f32> = u_xlat2;
  let x_680 : vec3<f32> = (vec3<f32>(x_676, x_676, x_676) * vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_681 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
  let x_683 : vec4<f32> = u_xlat0;
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat0.w = dot(vec3<f32>(x_683.x, x_683.y, x_683.z), vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_689 : vec4<f32> = u_xlat0;
  let x_692 : vec4<f32> = x_22.x_WorldSpaceLightPos0;
  u_xlat0.x = dot(vec3<f32>(x_689.x, x_689.y, x_689.z), vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_696 : vec4<f32> = u_xlat0;
  let x_699 : vec2<f32> = max(vec2<f32>(x_696.x, x_696.w), vec2<f32>(0.0f, 0.0f));
  let x_700 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_699.x, x_699.y, x_700.z, x_700.w);
  let x_705 : f32 = u_xlat0.y;
  u_xlat4.x = log2(x_705);
  let x_712 : f32 = x_22.x_FaceShininess;
  let x_716 : f32 = x_22.x_OutlineShininess;
  u_xlat8.x = (-(x_712) + x_716);
  let x_719 : f32 = u_xlat11;
  let x_721 : f32 = u_xlat8.x;
  let x_724 : f32 = x_22.x_FaceShininess;
  u_xlat8.x = ((x_719 * x_721) + x_724);
  let x_728 : f32 = u_xlat8.x;
  u_xlat8.x = (x_728 * 128.0f);
  let x_733 : f32 = u_xlat4.x;
  let x_735 : f32 = u_xlat8.x;
  u_xlat4.x = (x_733 * x_735);
  let x_739 : f32 = u_xlat4.x;
  u_xlat4.x = exp2(x_739);
  let x_742 : vec3<f32> = vs_TEXCOORD5;
  let x_746 : vec4<f32> = x_22.unity_WorldToLight[1i];
  u_xlat8 = (vec2<f32>(x_742.y, x_742.y) * vec2<f32>(x_746.x, x_746.y));
  let x_750 : vec4<f32> = x_22.unity_WorldToLight[0i];
  let x_752 : vec3<f32> = vs_TEXCOORD5;
  let x_755 : vec2<f32> = u_xlat8;
  u_xlat8 = ((vec2<f32>(x_750.x, x_750.y) * vec2<f32>(x_752.x, x_752.x)) + x_755);
  let x_758 : vec4<f32> = x_22.unity_WorldToLight[2i];
  let x_760 : vec3<f32> = vs_TEXCOORD5;
  let x_763 : vec2<f32> = u_xlat8;
  u_xlat8 = ((vec2<f32>(x_758.x, x_758.y) * vec2<f32>(x_760.z, x_760.z)) + x_763);
  let x_765 : vec2<f32> = u_xlat8;
  let x_768 : vec4<f32> = x_22.unity_WorldToLight[3i];
  u_xlat8 = (x_765 + vec2<f32>(x_768.x, x_768.y));
  let x_776 : vec2<f32> = u_xlat8;
  let x_777 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_776);
  u_xlat8.x = x_777.w;
  let x_780 : vec2<f32> = u_xlat8;
  let x_783 : vec4<f32> = x_22.x_LightColor0;
  let x_785 : vec3<f32> = (vec3<f32>(x_780.x, x_780.x, x_780.x) * vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat2;
  let x_792 : vec4<f32> = x_22.x_SpecColor;
  let x_794 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) * vec3<f32>(x_792.x, x_792.y, x_792.z));
  let x_795 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec3<f32> = u_xlat4;
  let x_799 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_797.x, x_797.x, x_797.x) * vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_803 : f32 = u_xlat1.w;
  u_xlat14 = max(x_803, 0.0001f);
  let x_806 : vec4<f32> = u_xlat1;
  let x_808 : f32 = u_xlat14;
  let x_810 : vec3<f32> = (vec3<f32>(x_806.x, x_806.y, x_806.z) / vec3<f32>(x_808, x_808, x_808));
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_816 : f32 = u_xlat1.w;
  SV_Target0.w = x_816;
  let x_819 : vec4<f32> = u_xlat2;
  let x_821 : vec4<f32> = u_xlat1;
  let x_823 : vec3<f32> = (vec3<f32>(x_819.x, x_819.y, x_819.z) * vec3<f32>(x_821.x, x_821.y, x_821.z));
  let x_824 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec4<f32> = u_xlat1;
  let x_828 : vec4<f32> = u_xlat0;
  let x_831 : vec3<f32> = u_xlat4;
  let x_832 : vec3<f32> = ((vec3<f32>(x_826.x, x_826.y, x_826.z) * vec3<f32>(x_828.x, x_828.x, x_828.x)) + x_831);
  let x_833 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD6_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(7) vs_COLOR0_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @location(6) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

