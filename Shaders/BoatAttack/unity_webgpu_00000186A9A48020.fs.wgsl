struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  @size(12)
  padding_1 : u32,
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat11 : f32;
  var u_xlat16 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlatb17 : bool;
  var u_xlatb1 : vec3<bool>;
  var x_231 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_555 : f32;
  var x_567 : f32;
  var x_579 : f32;
  var u_xlat4 : vec2<f32>;
  var x_724 : f32;
  var x_736 : f32;
  var x_748 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_854 : f32;
  var x_867 : f32;
  var x_879 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Params2;
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Params2;
  let x_45 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_60 : vec3<f32> = u_xlat0;
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_70);
  let x_80 : f32 = x_26.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_80);
  let x_82 : bool = u_xlatb6;
  if (x_82) {
    let x_86 : vec3<f32> = u_xlat1;
    let x_89 : vec4<f32> = x_26.x_Distortion_Params2;
    let x_91 : vec2<f32> = (vec2<f32>(x_86.x, x_86.x) * vec2<f32>(x_89.x, x_89.y));
    let x_92 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_91.x, x_91.y, x_92.z);
    let x_97 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat6.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat6.y;
    u_xlat11 = (1.0f / x_115);
    let x_118 : f32 = u_xlat6.x;
    let x_119 : f32 = u_xlat11;
    u_xlat6.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec3<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat6;
    let x_129 : vec2<f32> = u_xlat10;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_136);
    let x_138 : f32 = u_xlat16;
    let x_140 : f32 = x_26.x_Distortion_Params2.x;
    u_xlat16 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_26.x_Distortion_Params2.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_158);
    let x_160 : f32 = u_xlat7;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat7 = (x_166 * x_168);
    let x_171 : f32 = u_xlat7;
    u_xlat12 = ((x_171 * 0.0208351f) + -0.085133001f);
    let x_176 : f32 = u_xlat7;
    let x_177 : f32 = u_xlat12;
    u_xlat12 = ((x_176 * x_177) + 0.180141002f);
    let x_181 : f32 = u_xlat7;
    let x_182 : f32 = u_xlat12;
    u_xlat12 = ((x_181 * x_182) + -0.330299497f);
    let x_186 : f32 = u_xlat7;
    let x_187 : f32 = u_xlat12;
    u_xlat7 = ((x_186 * x_187) + 0.999866009f);
    let x_191 : f32 = u_xlat7;
    let x_193 : f32 = u_xlat2.x;
    u_xlat12 = (x_191 * x_193);
    let x_197 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_197));
    let x_200 : f32 = u_xlat12;
    u_xlat12 = ((x_200 * -2.0f) + 1.570796371f);
    let x_205 : bool = u_xlatb17;
    let x_206 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_206, x_205);
    let x_209 : f32 = u_xlat2.x;
    let x_210 : f32 = u_xlat7;
    let x_212 : f32 = u_xlat12;
    u_xlat2.x = ((x_209 * x_210) + x_212);
    let x_216 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_216, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_223 < -(x_225));
    let x_230 : bool = u_xlatb1.x;
    if (x_230) {
      let x_235 : f32 = u_xlat2.x;
      x_231 = -(x_235);
    } else {
      let x_239 : f32 = u_xlat2.x;
      x_231 = x_239;
    }
    let x_240 : f32 = x_231;
    u_xlat1.x = x_240;
    let x_242 : f32 = u_xlat16;
    let x_244 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_242 * x_244) + -1.0f);
    let x_248 : vec3<f32> = u_xlat0;
    let x_250 : vec3<f32> = u_xlat1;
    let x_253 : vec2<f32> = u_xlat10;
    let x_254 : vec2<f32> = ((vec2<f32>(x_248.x, x_248.y) * vec2<f32>(x_250.x, x_250.x)) + x_253);
    let x_255 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_254.x, x_254.y, x_255.z);
  }
  let x_267 : vec3<f32> = u_xlat6;
  let x_271 : f32 = x_26.x_GlobalMipBias.x;
  let x_272 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_267.x, x_267.y), x_271);
  u_xlat0 = vec3<f32>(x_272.x, x_272.y, x_272.z);
  let x_278 : vec3<f32> = u_xlat6;
  let x_281 : f32 = x_26.x_GlobalMipBias.x;
  let x_282 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_278.x, x_278.y), x_281);
  u_xlat2 = x_282;
  let x_286 : f32 = x_26.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_286);
  let x_288 : bool = u_xlatb15;
  if (x_288) {
    let x_291 : vec4<f32> = u_xlat2;
    let x_293 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_291.w, x_291.w, x_291.w) * vec3<f32>(x_293.x, x_293.y, x_293.z));
    let x_296 : vec3<f32> = u_xlat3;
    let x_299 : vec3<f32> = (x_296 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_300 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  }
  let x_302 : vec4<f32> = u_xlat2;
  let x_306 : vec4<f32> = x_26.x_Bloom_Params;
  let x_308 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_306.x, x_306.x, x_306.x));
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat2;
  let x_314 : vec4<f32> = x_26.x_Bloom_Params;
  let x_317 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_314.y, x_314.z, x_314.w)) + x_317);
  let x_322 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_322);
  let x_324 : bool = u_xlatb15;
  if (x_324) {
    let x_327 : vec3<f32> = u_xlat6;
    let x_330 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_333 : vec2<f32> = (vec2<f32>(x_327.x, x_327.y) + -(vec2<f32>(x_330.x, x_330.y)));
    let x_334 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_333.x, x_333.y, x_334.z);
    let x_336 : vec3<f32> = u_xlat1;
    let x_340 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_342 : vec2<f32> = (abs(vec2<f32>(x_336.x, x_336.y)) * vec2<f32>(x_340.z, x_340.z));
    let x_343 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_343.x, x_342.x, x_342.y);
    let x_346 : f32 = u_xlat1.y;
    let x_349 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_346 * x_349);
    let x_353 : vec3<f32> = u_xlat1;
    let x_355 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_353.x, x_353.z), vec2<f32>(x_355.x, x_355.z));
    let x_358 : f32 = u_xlat15;
    u_xlat15 = (-(x_358) + 1.0f);
    let x_361 : f32 = u_xlat15;
    u_xlat15 = max(x_361, 0.0f);
    let x_363 : f32 = u_xlat15;
    u_xlat15 = log2(x_363);
    let x_365 : f32 = u_xlat15;
    let x_367 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_365 * x_367);
    let x_369 : f32 = u_xlat15;
    u_xlat15 = exp2(x_369);
    let x_372 : vec4<f32> = x_26.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_372.x, x_372.y, x_372.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_377 : f32 = u_xlat15;
    let x_379 : vec3<f32> = u_xlat1;
    let x_382 : vec4<f32> = x_26.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_377, x_377, x_377) * x_379) + vec3<f32>(x_382.x, x_382.y, x_382.z));
    let x_385 : vec3<f32> = u_xlat0;
    let x_386 : vec3<f32> = u_xlat1;
    u_xlat0 = (x_385 * x_386);
  }
  let x_388 : vec3<f32> = u_xlat0;
  let x_392 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_388.z, x_388.x, x_388.y) * vec3<f32>(x_392.w, x_392.w, x_392.w));
  let x_395 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_395 * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_402 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_402, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_405 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(x_405);
  let x_407 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_407 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_414 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_414, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_419 : vec3<f32> = u_xlat0;
  let x_421 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat5 = (x_419 * vec3<f32>(x_421.z, x_421.z, x_421.z));
  let x_425 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_425);
  let x_429 : vec4<f32> = x_26.x_Lut_Params;
  let x_431 : vec2<f32> = (vec2<f32>(x_429.x, x_429.y) * vec2<f32>(0.5f, 0.5f));
  let x_432 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_431.x, x_431.y, x_432.z);
  let x_434 : vec3<f32> = u_xlat5;
  let x_437 : vec4<f32> = x_26.x_Lut_Params;
  let x_440 : vec3<f32> = u_xlat1;
  let x_442 : vec2<f32> = ((vec2<f32>(x_434.y, x_434.z) * vec2<f32>(x_437.x, x_437.y)) + vec2<f32>(x_440.x, x_440.y));
  let x_443 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_443.x, x_442.x, x_442.y);
  let x_446 : f32 = u_xlat5.x;
  let x_448 : f32 = x_26.x_Lut_Params.y;
  let x_451 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_446 * x_448) + x_451);
  let x_458 : vec3<f32> = u_xlat1;
  let x_460 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_458.x, x_458.z), 0.0f);
  let x_461 : vec3<f32> = vec3<f32>(x_460.x, x_460.y, x_460.z);
  let x_462 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_465 : f32 = x_26.x_Lut_Params.y;
  u_xlat3.x = x_465;
  u_xlat3.y = 0.0f;
  let x_468 : vec3<f32> = u_xlat1;
  let x_470 : vec3<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_468.x, x_468.z) + vec2<f32>(x_470.x, x_470.y));
  let x_476 : vec2<f32> = u_xlat10;
  let x_477 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_476, 0.0f);
  u_xlat1 = vec3<f32>(x_477.x, x_477.y, x_477.z);
  let x_480 : f32 = u_xlat0.x;
  let x_482 : f32 = x_26.x_Lut_Params.z;
  let x_485 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_480 * x_482) + -(x_485));
  let x_489 : vec4<f32> = u_xlat2;
  let x_492 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_489.x, x_489.y, x_489.z)) + x_492);
  let x_494 : vec3<f32> = u_xlat0;
  let x_496 : vec3<f32> = u_xlat5;
  let x_498 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_494.x, x_494.x, x_494.x) * x_496) + vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_503 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_503);
  let x_505 : bool = u_xlatb15;
  if (x_505) {
    let x_508 : vec3<f32> = u_xlat0;
    u_xlat0 = x_508;
    let x_509 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_509, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_513 : vec3<f32> = u_xlat0;
    u_xlat1 = (x_513 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_517 : vec3<f32> = u_xlat0;
    let x_518 : vec3<f32> = log2(x_517);
    let x_519 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
    let x_521 : vec4<f32> = u_xlat2;
    let x_525 : vec3<f32> = (vec3<f32>(x_521.x, x_521.y, x_521.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_526 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
    let x_528 : vec4<f32> = u_xlat2;
    let x_530 : vec3<f32> = exp2(vec3<f32>(x_528.x, x_528.y, x_528.z));
    let x_531 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
    let x_533 : vec4<f32> = u_xlat2;
    let x_540 : vec3<f32> = ((vec3<f32>(x_533.x, x_533.y, x_533.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_541 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
    let x_546 : vec3<f32> = u_xlat0;
    let x_549 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_546.x, x_546.y, x_546.z, x_546.x));
    u_xlatb3 = vec3<bool>(x_549.x, x_549.y, x_549.z);
    let x_552 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_552;
    let x_554 : bool = u_xlatb3.x;
    if (x_554) {
      let x_559 : f32 = u_xlat1.x;
      x_555 = x_559;
    } else {
      let x_562 : f32 = u_xlat2.x;
      x_555 = x_562;
    }
    let x_563 : f32 = x_555;
    hlslcc_movcTemp.x = x_563;
    let x_566 : bool = u_xlatb3.y;
    if (x_566) {
      let x_571 : f32 = u_xlat1.y;
      x_567 = x_571;
    } else {
      let x_574 : f32 = u_xlat2.y;
      x_567 = x_574;
    }
    let x_575 : f32 = x_567;
    hlslcc_movcTemp.y = x_575;
    let x_578 : bool = u_xlatb3.z;
    if (x_578) {
      let x_583 : f32 = u_xlat1.z;
      x_579 = x_583;
    } else {
      let x_586 : f32 = u_xlat2.z;
      x_579 = x_586;
    }
    let x_587 : f32 = x_579;
    hlslcc_movcTemp.z = x_587;
    let x_589 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_589;
    let x_590 : vec3<f32> = u_xlat1;
    let x_593 : vec4<f32> = x_26.x_UserLut_Params;
    let x_595 : vec3<f32> = (vec3<f32>(x_590.z, x_590.x, x_590.y) * vec3<f32>(x_593.z, x_593.z, x_593.z));
    let x_596 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
    let x_599 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_599);
    let x_602 : vec4<f32> = x_26.x_UserLut_Params;
    let x_604 : vec2<f32> = (vec2<f32>(x_602.x, x_602.y) * vec2<f32>(0.5f, 0.5f));
    let x_605 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_604.x, x_605.y, x_605.z, x_604.y);
    let x_607 : vec4<f32> = u_xlat2;
    let x_610 : vec4<f32> = x_26.x_UserLut_Params;
    let x_613 : vec4<f32> = u_xlat2;
    let x_615 : vec2<f32> = ((vec2<f32>(x_607.y, x_607.z) * vec2<f32>(x_610.x, x_610.y)) + vec2<f32>(x_613.x, x_613.w));
    let x_616 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_616.x, x_615.x, x_615.y, x_616.w);
    let x_618 : f32 = u_xlat15;
    let x_620 : f32 = x_26.x_UserLut_Params.y;
    let x_623 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_618 * x_620) + x_623);
    let x_630 : vec4<f32> = u_xlat2;
    let x_632 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_630.x, x_630.z), 0.0f);
    u_xlat3 = vec3<f32>(x_632.x, x_632.y, x_632.z);
    let x_636 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_636;
    u_xlat4.y = 0.0f;
    let x_639 : vec4<f32> = u_xlat2;
    let x_641 : vec2<f32> = u_xlat4;
    let x_642 : vec2<f32> = (vec2<f32>(x_639.x, x_639.z) + x_641);
    let x_643 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
    let x_648 : vec4<f32> = u_xlat2;
    let x_650 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_648.x, x_648.y), 0.0f);
    let x_651 : vec3<f32> = vec3<f32>(x_650.x, x_650.y, x_650.z);
    let x_652 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
    let x_655 : f32 = u_xlat1.z;
    let x_657 : f32 = x_26.x_UserLut_Params.z;
    let x_659 : f32 = u_xlat15;
    u_xlat15 = ((x_655 * x_657) + -(x_659));
    let x_662 : vec3<f32> = u_xlat3;
    let x_664 : vec4<f32> = u_xlat2;
    let x_666 : vec3<f32> = (-(x_662) + vec3<f32>(x_664.x, x_664.y, x_664.z));
    let x_667 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
    let x_669 : f32 = u_xlat15;
    let x_671 : vec4<f32> = u_xlat2;
    let x_674 : vec3<f32> = u_xlat3;
    let x_675 : vec3<f32> = ((vec3<f32>(x_669, x_669, x_669) * vec3<f32>(x_671.x, x_671.y, x_671.z)) + x_674);
    let x_676 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
    let x_678 : vec3<f32> = u_xlat1;
    let x_680 : vec4<f32> = u_xlat2;
    let x_682 : vec3<f32> = (-(x_678) + vec3<f32>(x_680.x, x_680.y, x_680.z));
    let x_683 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
    let x_686 : vec4<f32> = x_26.x_UserLut_Params;
    let x_688 : vec4<f32> = u_xlat2;
    let x_691 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_686.w, x_686.w, x_686.w) * vec3<f32>(x_688.x, x_688.y, x_688.z)) + x_691);
    let x_693 : vec3<f32> = u_xlat1;
    let x_696 : vec3<f32> = (x_693 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_697 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
    let x_699 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_699 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_703 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_703 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_707 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_707));
    let x_710 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_710 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_714 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_714);
    let x_718 : vec3<f32> = u_xlat1;
    let x_720 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_718.x, x_718.y, x_718.z, x_718.x));
    u_xlatb1 = vec3<bool>(x_720.x, x_720.y, x_720.z);
    let x_723 : bool = u_xlatb1.x;
    if (x_723) {
      let x_728 : f32 = u_xlat2.x;
      x_724 = x_728;
    } else {
      let x_731 : f32 = u_xlat3.x;
      x_724 = x_731;
    }
    let x_732 : f32 = x_724;
    u_xlat0.x = x_732;
    let x_735 : bool = u_xlatb1.y;
    if (x_735) {
      let x_740 : f32 = u_xlat2.y;
      x_736 = x_740;
    } else {
      let x_743 : f32 = u_xlat3.y;
      x_736 = x_743;
    }
    let x_744 : f32 = x_736;
    u_xlat0.y = x_744;
    let x_747 : bool = u_xlatb1.z;
    if (x_747) {
      let x_752 : f32 = u_xlat2.z;
      x_748 = x_752;
    } else {
      let x_755 : f32 = u_xlat3.z;
      x_748 = x_755;
    }
    let x_756 : f32 = x_748;
    u_xlat0.z = x_756;
  }
  let x_758 : vec2<f32> = vs_TEXCOORD0;
  let x_761 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_765 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_767 : vec2<f32> = ((x_758 * vec2<f32>(x_761.x, x_761.y)) + vec2<f32>(x_765.z, x_765.w));
  let x_768 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_767.x, x_767.y, x_768.z);
  let x_775 : vec3<f32> = u_xlat1;
  let x_778 : f32 = x_26.x_GlobalMipBias.x;
  let x_779 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_775.x, x_775.y), x_778);
  u_xlat15 = x_779.w;
  let x_781 : f32 = u_xlat15;
  u_xlat15 = (x_781 + -0.5f);
  let x_783 : f32 = u_xlat15;
  let x_784 : f32 = u_xlat15;
  u_xlat15 = (x_783 + x_784);
  let x_786 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_786, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_794 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_794);
  let x_799 : f32 = x_26.x_Grain_Params.y;
  let x_801 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_799 * -(x_801)) + 1.0f);
  let x_806 : f32 = u_xlat15;
  let x_808 : vec3<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_806, x_806, x_806) * x_808);
  let x_810 : vec3<f32> = u_xlat6;
  let x_813 : vec2<f32> = x_26.x_Grain_Params;
  u_xlat6 = (x_810 * vec3<f32>(x_813.x, x_813.x, x_813.x));
  let x_816 : vec3<f32> = u_xlat6;
  let x_817 : vec3<f32> = u_xlat1;
  let x_820 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_816 * vec3<f32>(x_817.x, x_817.x, x_817.x)) + x_820);
  let x_822 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_822 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_824 : vec3<f32> = u_xlat0;
  let x_826 : vec3<f32> = log2(abs(x_824));
  let x_827 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : vec4<f32> = u_xlat2;
  let x_831 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_832 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = u_xlat2;
  let x_836 : vec3<f32> = exp2(vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec4<f32> = u_xlat2;
  let x_842 : vec3<f32> = ((vec3<f32>(x_839.x, x_839.y, x_839.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_843 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_846 : vec3<f32> = u_xlat0;
  let x_848 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_846.x, x_846.y, x_846.z, x_846.x));
  u_xlatb0 = vec3<bool>(x_848.x, x_848.y, x_848.z);
  let x_853 : bool = u_xlatb0.x;
  if (x_853) {
    let x_858 : f32 = u_xlat1.x;
    x_854 = x_858;
  } else {
    let x_861 : f32 = u_xlat2.x;
    x_854 = x_861;
  }
  let x_862 : f32 = x_854;
  SV_Target0.x = x_862;
  let x_866 : bool = u_xlatb0.y;
  if (x_866) {
    let x_871 : f32 = u_xlat1.y;
    x_867 = x_871;
  } else {
    let x_874 : f32 = u_xlat2.y;
    x_867 = x_874;
  }
  let x_875 : f32 = x_867;
  SV_Target0.y = x_875;
  let x_878 : bool = u_xlatb0.z;
  if (x_878) {
    let x_883 : f32 = u_xlat1.z;
    x_879 = x_883;
  } else {
    let x_886 : f32 = u_xlat2.z;
    x_879 = x_886;
  }
  let x_887 : f32 = x_879;
  SV_Target0.z = x_887;
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

