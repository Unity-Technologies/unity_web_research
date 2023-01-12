struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb8 : bool;
  var u_xlat14 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlat9 : f32;
  var u_xlat15 : f32;
  var u_xlat21 : f32;
  var u_xlatb4 : bool;
  var u_xlatb2 : bool;
  var x_220 : f32;
  var u_xlat6 : f32;
  var u_xlat8 : f32;
  var u_xlatb9 : bool;
  var x_371 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_403 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat7 : vec3<f32>;
  var x_924 : f32;
  var x_936 : f32;
  var x_949 : f32;
  var x_1006 : f32;
  var x_1019 : f32;
  var x_1031 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_15 : vec2<f32> = vs_TEXCOORD1;
  phase0_Input0_1 = vec4<f32>(x_13.x, x_13.y, x_15.x, x_15.y);
  let x_23 : vec4<f32> = phase0_Input0_1;
  u_xlat0 = (x_23 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_28 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Distortion_Amount;
  u_xlat1 = ((x_28 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_43 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_32.x_Distortion_Amount;
  let x_50 : vec4<f32> = x_32.x_Distortion_CenterScale;
  u_xlat0 = ((x_43 * vec4<f32>(x_45.z, x_45.z, x_45.z, x_45.z)) + -(vec4<f32>(x_50.x, x_50.y, x_50.x, x_50.y)));
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = x_32.x_Distortion_CenterScale;
  u_xlat0 = (x_54 * vec4<f32>(x_56.z, x_56.w, x_56.z, x_56.w));
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_71);
  let x_81 : f32 = x_32.x_Distortion_Amount.w;
  u_xlatb8 = (0.0f < x_81);
  let x_83 : bool = u_xlatb8;
  if (x_83) {
    let x_88 : vec3<f32> = u_xlat2;
    let x_91 : vec4<f32> = x_32.x_Distortion_Amount;
    u_xlat14 = (vec2<f32>(x_88.x, x_88.x) * vec2<f32>(x_91.x, x_91.y));
    let x_96 : f32 = u_xlat14.x;
    u_xlat3.x = sin(x_96);
    let x_101 : f32 = u_xlat14.x;
    u_xlat4.x = cos(x_101);
    let x_105 : f32 = u_xlat3.x;
    let x_107 : f32 = u_xlat4.x;
    u_xlat14.x = (x_105 / x_107);
    let x_114 : f32 = u_xlat14.y;
    u_xlat20 = (1.0f / x_114);
    let x_117 : f32 = u_xlat14.x;
    let x_118 : f32 = u_xlat20;
    u_xlat14.x = ((x_117 * x_118) + -1.0f);
    let x_123 : vec4<f32> = u_xlat0;
    let x_125 : vec2<f32> = u_xlat14;
    let x_128 : vec4<f32> = u_xlat1;
    u_xlat14 = ((vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_125.x, x_125.x)) + vec2<f32>(x_128.x, x_128.y));
  } else {
    let x_133 : f32 = u_xlat2.x;
    u_xlat3.x = (1.0f / x_133);
    let x_137 : f32 = u_xlat3.x;
    let x_139 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat3.x = (x_137 * x_139);
    let x_143 : f32 = u_xlat2.x;
    let x_145 : f32 = x_32.x_Distortion_Amount.y;
    u_xlat2.x = (x_143 * x_145);
    let x_150 : f32 = u_xlat2.x;
    u_xlat9 = min(abs(x_150), 1.0f);
    let x_155 : f32 = u_xlat2.x;
    u_xlat15 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat15;
    u_xlat15 = (1.0f / x_158);
    let x_160 : f32 = u_xlat15;
    let x_161 : f32 = u_xlat9;
    u_xlat9 = (x_160 * x_161);
    let x_163 : f32 = u_xlat9;
    let x_164 : f32 = u_xlat9;
    u_xlat15 = (x_163 * x_164);
    let x_167 : f32 = u_xlat15;
    u_xlat21 = ((x_167 * 0.0208351f) + -0.085133001f);
    let x_172 : f32 = u_xlat15;
    let x_173 : f32 = u_xlat21;
    u_xlat21 = ((x_172 * x_173) + 0.180141002f);
    let x_177 : f32 = u_xlat15;
    let x_178 : f32 = u_xlat21;
    u_xlat21 = ((x_177 * x_178) + -0.330299497f);
    let x_182 : f32 = u_xlat15;
    let x_183 : f32 = u_xlat21;
    u_xlat15 = ((x_182 * x_183) + 0.999866009f);
    let x_187 : f32 = u_xlat15;
    let x_188 : f32 = u_xlat9;
    u_xlat21 = (x_187 * x_188);
    let x_192 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_192));
    let x_195 : f32 = u_xlat21;
    u_xlat21 = ((x_195 * -2.0f) + 1.570796371f);
    let x_200 : bool = u_xlatb4;
    let x_201 : f32 = u_xlat21;
    u_xlat21 = select(0.0f, x_201, x_200);
    let x_203 : f32 = u_xlat9;
    let x_204 : f32 = u_xlat15;
    let x_206 : f32 = u_xlat21;
    u_xlat9 = ((x_203 * x_204) + x_206);
    let x_209 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_209, 1.0f);
    let x_214 : f32 = u_xlat2.x;
    let x_216 : f32 = u_xlat2.x;
    u_xlatb2 = (x_214 < -(x_216));
    let x_219 : bool = u_xlatb2;
    if (x_219) {
      let x_223 : f32 = u_xlat9;
      x_220 = -(x_223);
    } else {
      let x_226 : f32 = u_xlat9;
      x_220 = x_226;
    }
    let x_227 : f32 = x_220;
    u_xlat2.x = x_227;
    let x_230 : f32 = u_xlat3.x;
    let x_232 : f32 = u_xlat2.x;
    u_xlat2.x = ((x_230 * x_232) + -1.0f);
    let x_236 : vec4<f32> = u_xlat0;
    let x_238 : vec3<f32> = u_xlat2;
    let x_241 : vec4<f32> = u_xlat1;
    u_xlat14 = ((vec2<f32>(x_236.x, x_236.y) * vec2<f32>(x_238.x, x_238.x)) + vec2<f32>(x_241.x, x_241.y));
  }
  let x_244 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_244.z, x_244.w), vec2<f32>(x_246.z, x_246.w));
  let x_251 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_251);
  let x_254 : bool = u_xlatb8;
  if (x_254) {
    let x_257 : vec4<f32> = u_xlat0;
    let x_260 : vec4<f32> = x_32.x_Distortion_Amount;
    let x_262 : vec2<f32> = (vec2<f32>(x_257.x, x_257.x) * vec2<f32>(x_260.x, x_260.y));
    let x_263 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
    let x_266 : f32 = u_xlat1.x;
    u_xlat2.x = cos(x_266);
    let x_270 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_270);
    let x_275 : f32 = u_xlat1.x;
    let x_277 : f32 = u_xlat2.x;
    u_xlat6 = (x_275 / x_277);
    let x_280 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_280);
    let x_283 : f32 = u_xlat6;
    let x_285 : f32 = u_xlat1.x;
    u_xlat6 = ((x_283 * x_285) + -1.0f);
    let x_288 : vec4<f32> = u_xlat0;
    let x_290 : f32 = u_xlat6;
    let x_293 : vec4<f32> = u_xlat1;
    let x_295 : vec2<f32> = ((vec2<f32>(x_288.z, x_288.w) * vec2<f32>(x_290, x_290)) + vec2<f32>(x_293.z, x_293.w));
    let x_296 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
  } else {
    let x_300 : f32 = u_xlat0.x;
    u_xlat6 = (1.0f / x_300);
    let x_302 : f32 = u_xlat6;
    let x_304 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat6 = (x_302 * x_304);
    let x_307 : f32 = u_xlat0.x;
    let x_309 : f32 = x_32.x_Distortion_Amount.y;
    u_xlat0.x = (x_307 * x_309);
    let x_313 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_313), 1.0f);
    let x_319 : f32 = u_xlat0.x;
    u_xlat8 = max(abs(x_319), 1.0f);
    let x_322 : f32 = u_xlat8;
    u_xlat8 = (1.0f / x_322);
    let x_324 : f32 = u_xlat8;
    let x_326 : f32 = u_xlat2.x;
    u_xlat2.x = (x_324 * x_326);
    let x_330 : f32 = u_xlat2.x;
    let x_332 : f32 = u_xlat2.x;
    u_xlat8 = (x_330 * x_332);
    let x_334 : f32 = u_xlat8;
    u_xlat3.x = ((x_334 * 0.0208351f) + -0.085133001f);
    let x_338 : f32 = u_xlat8;
    let x_340 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_338 * x_340) + 0.180141002f);
    let x_344 : f32 = u_xlat8;
    let x_346 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_344 * x_346) + -0.330299497f);
    let x_350 : f32 = u_xlat8;
    let x_352 : f32 = u_xlat3.x;
    u_xlat8 = ((x_350 * x_352) + 0.999866009f);
    let x_355 : f32 = u_xlat8;
    let x_357 : f32 = u_xlat2.x;
    u_xlat3.x = (x_355 * x_357);
    let x_362 : f32 = u_xlat0.x;
    u_xlatb9 = (1.0f < abs(x_362));
    let x_366 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_366 * -2.0f) + 1.570796371f);
    let x_370 : bool = u_xlatb9;
    if (x_370) {
      let x_375 : f32 = u_xlat3.x;
      x_371 = x_375;
    } else {
      x_371 = 0.0f;
    }
    let x_377 : f32 = x_371;
    u_xlat3.x = x_377;
    let x_380 : f32 = u_xlat2.x;
    let x_381 : f32 = u_xlat8;
    let x_384 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_380 * x_381) + x_384);
    let x_388 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_388, 1.0f);
    let x_395 : f32 = u_xlat0.x;
    let x_397 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_395 < -(x_397));
    let x_402 : bool = u_xlatb0.x;
    if (x_402) {
      let x_407 : f32 = u_xlat2.x;
      x_403 = -(x_407);
    } else {
      let x_411 : f32 = u_xlat2.x;
      x_403 = x_411;
    }
    let x_412 : f32 = x_403;
    u_xlat0.x = x_412;
    let x_414 : f32 = u_xlat6;
    let x_416 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_414 * x_416) + -1.0f);
    let x_420 : vec4<f32> = u_xlat0;
    let x_422 : vec4<f32> = u_xlat0;
    let x_425 : vec4<f32> = u_xlat1;
    let x_427 : vec2<f32> = ((vec2<f32>(x_420.z, x_420.w) * vec2<f32>(x_422.x, x_422.x)) + vec2<f32>(x_425.z, x_425.w));
    let x_428 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
  }
  let x_440 : vec4<f32> = phase0_Input0_1;
  let x_442 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_440.x, x_440.y));
  u_xlat0.x = x_442.x;
  let x_450 : vec4<f32> = u_xlat1;
  let x_452 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_450.x, x_450.y));
  u_xlat1 = x_452;
  let x_453 : vec4<f32> = u_xlat0;
  let x_455 : vec4<f32> = u_xlat1;
  let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.x, x_453.x) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_462 : vec4<f32> = x_32.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_462.x, x_462.y, x_462.x, x_462.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_466 : vec4<f32> = u_xlat0;
  let x_472 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_475 : vec2<f32> = u_xlat14;
  u_xlat3 = ((-(vec4<f32>(x_466.x, x_466.y, x_466.w, x_466.y)) * vec4<f32>(x_472.x, x_472.x, x_472.x, x_472.x)) + vec4<f32>(x_475.x, x_475.y, x_475.x, x_475.y));
  let x_478 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_478, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_482 : vec4<f32> = u_xlat3;
  let x_485 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat3 = (x_482 * vec4<f32>(x_485, x_485, x_485, x_485));
  let x_493 : vec4<f32> = u_xlat3;
  let x_495 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_493.x, x_493.y));
  u_xlat4 = x_495;
  let x_499 : vec4<f32> = u_xlat3;
  let x_501 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_499.z, x_499.w));
  u_xlat3 = x_501;
  let x_502 : vec4<f32> = u_xlat3;
  let x_506 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_502 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_506);
  let x_508 : vec4<f32> = u_xlat0;
  let x_512 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_515 : vec2<f32> = u_xlat14;
  let x_516 : vec2<f32> = ((-(vec2<f32>(x_508.z, x_508.y)) * vec2<f32>(x_512.x, x_512.x)) + x_515);
  let x_517 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_516.x, x_516.y, x_517.z);
  let x_519 : vec3<f32> = u_xlat2;
  let x_523 : vec2<f32> = clamp(vec2<f32>(x_519.x, x_519.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_524 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_523.x, x_523.y, x_524.z);
  let x_526 : vec3<f32> = u_xlat2;
  let x_529 : f32 = x_32.x_RenderViewportScaleFactor;
  let x_531 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_529, x_529));
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_531.x, x_531.y, x_532.z);
  let x_537 : vec3<f32> = u_xlat2;
  let x_539 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_537.x, x_537.y));
  u_xlat4 = x_539;
  let x_540 : vec4<f32> = u_xlat3;
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_540 + x_541);
  let x_543 : vec4<f32> = u_xlat0;
  let x_546 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_549 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_543.z, x_543.w, x_543.x, x_543.w) * vec4<f32>(x_546.x, x_546.x, x_546.x, x_546.x)) + vec4<f32>(x_549.x, x_549.y, x_549.x, x_549.y));
  let x_552 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_552, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat4 = (x_556 * vec4<f32>(x_558, x_558, x_558, x_558));
  let x_565 : vec4<f32> = u_xlat4;
  let x_567 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_565.x, x_565.y));
  u_xlat5 = x_567;
  let x_568 : vec4<f32> = u_xlat5;
  let x_570 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_568 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_570);
  let x_572 : vec2<f32> = u_xlat14;
  let x_573 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_572.x, x_572.y, x_573.z);
  let x_575 : vec3<f32> = u_xlat2;
  let x_579 : vec2<f32> = clamp(vec2<f32>(x_575.x, x_575.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_580 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_579.x, x_579.y, x_580.z);
  let x_582 : vec3<f32> = u_xlat2;
  let x_585 : f32 = x_32.x_RenderViewportScaleFactor;
  let x_587 : vec2<f32> = (vec2<f32>(x_582.x, x_582.y) * vec2<f32>(x_585, x_585));
  let x_588 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_587.x, x_587.y, x_588.z);
  let x_593 : vec3<f32> = u_xlat2;
  let x_595 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_593.x, x_593.y));
  u_xlat5 = x_595;
  let x_596 : vec4<f32> = u_xlat5;
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_596 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_600);
  let x_605 : vec4<f32> = u_xlat4;
  let x_607 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_605.z, x_605.w));
  u_xlat4 = x_607;
  let x_608 : vec4<f32> = u_xlat4;
  let x_610 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_608 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_610);
  let x_612 : vec4<f32> = u_xlat0;
  let x_615 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_618 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_612.z, x_612.y, x_612.w, x_612.y) * vec4<f32>(x_615.x, x_615.x, x_615.x, x_615.x)) + vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y));
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_621, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_625 : vec4<f32> = u_xlat4;
  let x_627 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat4 = (x_625 * vec4<f32>(x_627, x_627, x_627, x_627));
  let x_633 : vec4<f32> = u_xlat4;
  let x_635 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_633.x, x_633.y));
  u_xlat5 = x_635;
  let x_636 : vec4<f32> = u_xlat3;
  let x_637 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_636 + x_637);
  let x_642 : vec4<f32> = u_xlat4;
  let x_644 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_642.z, x_642.w));
  u_xlat4 = x_644;
  let x_645 : vec4<f32> = u_xlat4;
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_645 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_647);
  let x_649 : vec4<f32> = u_xlat0;
  let x_652 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_655 : vec2<f32> = u_xlat14;
  let x_656 : vec2<f32> = ((vec2<f32>(x_649.x, x_649.y) * vec2<f32>(x_652.x, x_652.x)) + x_655);
  let x_657 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat0;
  let x_663 : vec2<f32> = clamp(vec2<f32>(x_659.x, x_659.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_664 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat0;
  let x_669 : f32 = x_32.x_RenderViewportScaleFactor;
  let x_671 : vec2<f32> = (vec2<f32>(x_666.x, x_666.y) * vec2<f32>(x_669, x_669));
  let x_672 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
  let x_677 : vec4<f32> = u_xlat0;
  let x_679 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_677.x, x_677.y));
  u_xlat0 = x_679;
  let x_680 : vec4<f32> = u_xlat0;
  let x_681 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_680 + x_681);
  let x_683 : vec4<f32> = u_xlat0;
  let x_685 : vec3<f32> = x_32.x_Bloom_Settings;
  u_xlat0 = (x_683 * vec4<f32>(x_685.y, x_685.y, x_685.y, x_685.y));
  let x_688 : vec2<f32> = u_xlat14;
  let x_691 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_695 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_697 : vec2<f32> = ((x_688 * vec2<f32>(x_691.x, x_691.y)) + vec2<f32>(x_695.z, x_695.w));
  let x_698 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_697.x, x_697.y, x_698.z);
  let x_705 : vec3<f32> = u_xlat2;
  let x_707 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_705.x, x_705.y));
  u_xlat2 = vec3<f32>(x_707.x, x_707.y, x_707.z);
  let x_709 : vec4<f32> = u_xlat0;
  let x_713 : vec3<f32> = (vec3<f32>(x_709.x, x_709.y, x_709.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_714 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_716 : vec3<f32> = u_xlat2;
  let x_718 : vec3<f32> = x_32.x_Bloom_Settings;
  u_xlat2 = (x_716 * vec3<f32>(x_718.z, x_718.z, x_718.z));
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_721 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_724 : vec4<f32> = u_xlat0;
  let x_728 : vec3<f32> = x_32.x_Bloom_Color;
  let x_729 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) * x_728);
  let x_730 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_733 : f32 = u_xlat0.w;
  u_xlat4.w = (x_733 * 0.0625f);
  let x_736 : vec4<f32> = u_xlat1;
  let x_737 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_736 + x_737);
  let x_739 : vec4<f32> = u_xlat3;
  let x_741 : vec3<f32> = u_xlat2;
  let x_742 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) * x_741);
  let x_743 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  u_xlat1.w = 0.0f;
  let x_746 : vec4<f32> = u_xlat0;
  let x_747 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_746 + x_747);
  let x_749 : vec4<f32> = phase0_Input0_1;
  let x_753 : vec4<f32> = x_32.x_Grain_Params2;
  let x_757 : vec4<f32> = x_32.x_Grain_Params2;
  let x_759 : vec2<f32> = ((vec2<f32>(x_749.z, x_749.w) * vec2<f32>(x_753.x, x_753.y)) + vec2<f32>(x_757.z, x_757.w));
  let x_760 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
  let x_767 : vec4<f32> = u_xlat1;
  let x_769 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_767.x, x_767.y));
  let x_770 : vec3<f32> = vec3<f32>(x_769.x, x_769.y, x_769.z);
  let x_771 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat0;
  u_xlat2 = vec3<f32>(x_773.x, x_773.y, x_773.z);
  let x_775 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_775, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_780 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(x_780, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_786 : f32 = u_xlat19;
  u_xlat19 = sqrt(x_786);
  let x_790 : f32 = x_32.x_Grain_Params1.x;
  let x_791 : f32 = u_xlat19;
  u_xlat19 = ((x_790 * -(x_791)) + 1.0f);
  let x_795 : vec4<f32> = u_xlat0;
  let x_797 : vec4<f32> = u_xlat1;
  let x_799 : vec3<f32> = (vec3<f32>(x_795.x, x_795.y, x_795.z) * vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat1;
  let x_805 : f32 = x_32.x_Grain_Params1.y;
  let x_807 : f32 = x_32.x_Grain_Params1.y;
  let x_809 : f32 = x_32.x_Grain_Params1.y;
  let x_811 : vec3<f32> = (vec3<f32>(x_802.x, x_802.y, x_802.z) * vec3<f32>(x_805, x_807, x_809));
  let x_812 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : f32 = u_xlat19;
  let x_819 : vec4<f32> = u_xlat0;
  let x_821 : vec3<f32> = ((vec3<f32>(x_814.x, x_814.y, x_814.z) * vec3<f32>(x_816, x_816, x_816)) + vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_824 : vec4<f32> = phase0_Input0_1;
  let x_828 : vec4<f32> = x_32.x_Dithering_Coords;
  let x_832 : vec4<f32> = x_32.x_Dithering_Coords;
  let x_834 : vec2<f32> = ((vec2<f32>(x_824.x, x_824.y) * vec2<f32>(x_828.x, x_828.y)) + vec2<f32>(x_832.z, x_832.w));
  let x_835 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_834.x, x_834.y, x_835.z, x_835.w);
  let x_842 : vec4<f32> = u_xlat1;
  let x_844 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_842.x, x_842.y));
  u_xlat1.x = x_844.w;
  let x_848 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_848 * 2.0f) + -1.0f);
  let x_854 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_854 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_860 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_860, 0.0f, 1.0f);
  let x_864 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_864 * 2.0f) + -1.0f);
  let x_869 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_869)) + 1.0f);
  let x_875 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_875);
  let x_879 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_879) + 1.0f);
  let x_884 : f32 = u_xlat1.x;
  let x_886 : f32 = u_xlat7.x;
  u_xlat1.x = (x_884 * x_886);
  let x_889 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_889.x, x_889.y, x_889.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_894 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_894.x, x_894.y, x_894.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_900 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_900);
  let x_902 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_902 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_906 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_906);
  let x_908 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_908 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_917 : vec4<f32> = u_xlat0;
  let x_920 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_917.x, x_917.y, x_917.z, x_917.x));
  u_xlatb0 = vec3<bool>(x_920.x, x_920.y, x_920.z);
  let x_923 : bool = u_xlatb0.x;
  if (x_923) {
    let x_928 : f32 = u_xlat7.x;
    x_924 = x_928;
  } else {
    let x_931 : f32 = u_xlat2.x;
    x_924 = x_931;
  }
  let x_932 : f32 = x_924;
  u_xlat0.x = x_932;
  let x_935 : bool = u_xlatb0.y;
  if (x_935) {
    let x_940 : f32 = u_xlat7.y;
    x_936 = x_940;
  } else {
    let x_943 : f32 = u_xlat2.y;
    x_936 = x_943;
  }
  let x_944 : f32 = x_936;
  u_xlat0.y = x_944;
  let x_948 : bool = u_xlatb0.z;
  if (x_948) {
    let x_953 : f32 = u_xlat7.z;
    x_949 = x_953;
  } else {
    let x_956 : f32 = u_xlat2.z;
    x_949 = x_956;
  }
  let x_957 : f32 = x_949;
  u_xlat0.z = x_957;
  let x_959 : vec4<f32> = u_xlat1;
  let x_964 : vec4<f32> = u_xlat0;
  let x_966 : vec3<f32> = ((vec3<f32>(x_959.x, x_959.x, x_959.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : vec4<f32> = u_xlat0;
  let x_973 : vec3<f32> = (vec3<f32>(x_969.x, x_969.y, x_969.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_974 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_976.x, x_976.y, x_976.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_981 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_981 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_985 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_985), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_988 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_988);
  let x_990 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_990 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_994 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_994);
  let x_998 : vec4<f32> = u_xlat0;
  let x_1000 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_998.x, x_998.y, x_998.z, x_998.x));
  u_xlatb0 = vec3<bool>(x_1000.x, x_1000.y, x_1000.z);
  let x_1005 : bool = u_xlatb0.x;
  if (x_1005) {
    let x_1010 : f32 = u_xlat1.x;
    x_1006 = x_1010;
  } else {
    let x_1013 : f32 = u_xlat2.x;
    x_1006 = x_1013;
  }
  let x_1014 : f32 = x_1006;
  SV_Target0.x = x_1014;
  let x_1018 : bool = u_xlatb0.y;
  if (x_1018) {
    let x_1023 : f32 = u_xlat1.y;
    x_1019 = x_1023;
  } else {
    let x_1026 : f32 = u_xlat2.y;
    x_1019 = x_1026;
  }
  let x_1027 : f32 = x_1019;
  SV_Target0.y = x_1027;
  let x_1030 : bool = u_xlatb0.z;
  if (x_1030) {
    let x_1035 : f32 = u_xlat1.z;
    x_1031 = x_1035;
  } else {
    let x_1038 : f32 = u_xlat2.z;
    x_1031 = x_1038;
  }
  let x_1039 : f32 = x_1031;
  SV_Target0.z = x_1039;
  let x_1042 : f32 = u_xlat0.w;
  SV_Target0.w = x_1042;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}
