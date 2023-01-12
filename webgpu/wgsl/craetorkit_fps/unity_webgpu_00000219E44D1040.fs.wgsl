struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_LumaInAlpha : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

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
  var u_xlatb0 : bool;
  var x_399 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat19 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat13 : vec2<f32>;
  var x_787 : f32;
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
    let x_393 : f32 = u_xlat0.x;
    let x_395 : f32 = u_xlat0.x;
    u_xlatb0 = (x_393 < -(x_395));
    let x_398 : bool = u_xlatb0;
    if (x_398) {
      let x_403 : f32 = u_xlat2.x;
      x_399 = -(x_403);
    } else {
      let x_407 : f32 = u_xlat2.x;
      x_399 = x_407;
    }
    let x_408 : f32 = x_399;
    u_xlat0.x = x_408;
    let x_410 : f32 = u_xlat6;
    let x_412 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_410 * x_412) + -1.0f);
    let x_416 : vec4<f32> = u_xlat0;
    let x_418 : vec4<f32> = u_xlat0;
    let x_421 : vec4<f32> = u_xlat1;
    let x_423 : vec2<f32> = ((vec2<f32>(x_416.z, x_416.w) * vec2<f32>(x_418.x, x_418.x)) + vec2<f32>(x_421.z, x_421.w));
    let x_424 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
  }
  let x_436 : vec4<f32> = phase0_Input0_1;
  let x_438 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_436.x, x_436.y));
  u_xlat0.x = x_438.x;
  let x_446 : vec4<f32> = u_xlat1;
  let x_448 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_446.x, x_446.y));
  u_xlat1 = x_448;
  let x_449 : vec4<f32> = u_xlat0;
  let x_451 : vec4<f32> = u_xlat1;
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.x, x_449.x) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_458 : vec4<f32> = x_32.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_458.x, x_458.y, x_458.x, x_458.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_464 : f32 = x_32.x_Bloom_Settings.x;
  u_xlat2.x = (x_464 * 0.5f);
  let x_467 : vec4<f32> = u_xlat0;
  let x_469 : vec3<f32> = u_xlat2;
  let x_472 : vec2<f32> = u_xlat14;
  u_xlat3 = ((vec4<f32>(x_467.x, x_467.y, x_467.z, x_467.y) * vec4<f32>(x_469.x, x_469.x, x_469.x, x_469.x)) + vec4<f32>(x_472.x, x_472.y, x_472.x, x_472.y));
  let x_475 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_475, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_479 : vec4<f32> = u_xlat3;
  let x_482 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat3 = (x_479 * vec4<f32>(x_482, x_482, x_482, x_482));
  let x_490 : vec4<f32> = u_xlat3;
  let x_492 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_490.x, x_490.y));
  u_xlat4 = x_492;
  let x_496 : vec4<f32> = u_xlat3;
  let x_498 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_496.z, x_496.w));
  u_xlat3 = x_498;
  let x_499 : vec4<f32> = u_xlat3;
  let x_500 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_499 + x_500);
  let x_502 : vec4<f32> = u_xlat0;
  let x_504 : vec3<f32> = u_xlat2;
  let x_507 : vec2<f32> = u_xlat14;
  u_xlat0 = ((vec4<f32>(x_502.x, x_502.w, x_502.z, x_502.w) * vec4<f32>(x_504.x, x_504.x, x_504.x, x_504.x)) + vec4<f32>(x_507.x, x_507.y, x_507.x, x_507.y));
  let x_510 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_510, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_514 : vec4<f32> = u_xlat0;
  let x_516 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat0 = (x_514 * vec4<f32>(x_516, x_516, x_516, x_516));
  let x_522 : vec4<f32> = u_xlat0;
  let x_524 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_522.x, x_522.y));
  u_xlat4 = x_524;
  let x_525 : vec4<f32> = u_xlat3;
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_525 + x_526);
  let x_531 : vec4<f32> = u_xlat0;
  let x_533 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_531.z, x_531.w));
  u_xlat0 = x_533;
  let x_534 : vec4<f32> = u_xlat0;
  let x_535 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_534 + x_535);
  let x_537 : vec4<f32> = u_xlat0;
  let x_540 : vec3<f32> = x_32.x_Bloom_Settings;
  u_xlat0 = (x_537 * vec4<f32>(x_540.y, x_540.y, x_540.y, x_540.y));
  let x_543 : vec2<f32> = u_xlat14;
  let x_546 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_550 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_552 : vec2<f32> = ((x_543 * vec2<f32>(x_546.x, x_546.y)) + vec2<f32>(x_550.z, x_550.w));
  let x_553 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_552.x, x_552.y, x_553.z);
  let x_560 : vec3<f32> = u_xlat2;
  let x_562 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_560.x, x_560.y));
  let x_563 : vec3<f32> = vec3<f32>(x_562.x, x_562.y, x_562.z);
  let x_564 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
  let x_566 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_566 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_570 : vec4<f32> = u_xlat3;
  let x_573 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_575 : vec3<f32> = (vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(x_573.z, x_573.z, x_573.z));
  let x_576 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  u_xlat3.w = 0.0f;
  let x_579 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_579 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_583 : vec4<f32> = u_xlat0;
  let x_587 : vec3<f32> = x_32.x_Bloom_Color;
  let x_588 : vec3<f32> = (vec3<f32>(x_583.x, x_583.y, x_583.z) * x_587);
  let x_589 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_592 : f32 = u_xlat0.w;
  u_xlat5.w = (x_592 * 0.25f);
  let x_595 : vec4<f32> = u_xlat1;
  let x_596 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_595 + x_596);
  let x_598 : vec4<f32> = u_xlat3;
  let x_599 : vec4<f32> = u_xlat4;
  let x_601 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_598 * x_599) + x_601);
  let x_606 : f32 = x_32.x_Vignette_Mode;
  u_xlatb1 = (x_606 < 0.5f);
  let x_608 : bool = u_xlatb1;
  if (x_608) {
    let x_611 : vec2<f32> = u_xlat14;
    let x_615 : vec2<f32> = x_32.x_Vignette_Center;
    let x_617 : vec2<f32> = (x_611 + -(x_615));
    let x_618 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_617.x, x_617.y, x_618.z, x_618.w);
    let x_620 : vec4<f32> = u_xlat1;
    let x_625 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_627 : vec2<f32> = (abs(vec2<f32>(x_620.y, x_620.x)) * vec2<f32>(x_625.x, x_625.x));
    let x_628 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_628.x, x_627.x, x_627.y, x_628.w);
    let x_633 : f32 = x_32.x_ScreenParams.x;
    let x_635 : f32 = x_32.x_ScreenParams.y;
    u_xlat19 = (x_633 / x_635);
    let x_637 : f32 = u_xlat19;
    u_xlat19 = (x_637 + -1.0f);
    let x_640 : f32 = x_32.x_Vignette_Settings.w;
    let x_641 : f32 = u_xlat19;
    u_xlat19 = ((x_640 * x_641) + 1.0f);
    let x_644 : f32 = u_xlat19;
    let x_647 : f32 = u_xlat1.z;
    u_xlat1.x = (x_644 * x_647);
    let x_650 : vec4<f32> = u_xlat1;
    let x_651 : vec2<f32> = vec2<f32>(x_650.x, x_650.y);
    let x_652 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
    let x_654 : vec4<f32> = u_xlat1;
    let x_658 : vec2<f32> = clamp(vec2<f32>(x_654.x, x_654.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_659 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
    let x_661 : vec4<f32> = u_xlat1;
    let x_663 : vec2<f32> = log2(vec2<f32>(x_661.x, x_661.y));
    let x_664 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
    let x_666 : vec4<f32> = u_xlat1;
    let x_669 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_671 : vec2<f32> = (vec2<f32>(x_666.x, x_666.y) * vec2<f32>(x_669.z, x_669.z));
    let x_672 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
    let x_674 : vec4<f32> = u_xlat1;
    let x_676 : vec2<f32> = exp2(vec2<f32>(x_674.x, x_674.y));
    let x_677 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
    let x_679 : vec4<f32> = u_xlat1;
    let x_681 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_679.x, x_679.y), vec2<f32>(x_681.x, x_681.y));
    let x_686 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_686) + 1.0f);
    let x_691 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_691, 0.0f);
    let x_695 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_695);
    let x_699 : f32 = u_xlat1.x;
    let x_701 : f32 = x_32.x_Vignette_Settings.y;
    u_xlat1.x = (x_699 * x_701);
    let x_705 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_705);
    let x_711 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = (-(x_711) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_715 : vec4<f32> = u_xlat1;
    let x_717 : vec3<f32> = u_xlat7;
    let x_720 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_715.x, x_715.x, x_715.x) * x_717) + x_720);
    let x_722 : vec4<f32> = u_xlat0;
    let x_724 : vec3<f32> = u_xlat7;
    let x_725 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) * x_724);
    let x_726 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
    let x_729 : f32 = u_xlat0.w;
    u_xlat7.x = (x_729 + -1.0f);
    let x_733 : f32 = u_xlat1.x;
    let x_735 : f32 = u_xlat7.x;
    u_xlat3.w = ((x_733 * x_735) + 1.0f);
  } else {
    let x_745 : vec2<f32> = u_xlat14;
    let x_746 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_745);
    u_xlat1.x = x_746.w;
    let x_750 : f32 = u_xlat1.x;
    u_xlat1.z = (x_750 + 0.055f);
    let x_754 : vec4<f32> = u_xlat1;
    let x_759 : vec2<f32> = (vec2<f32>(x_754.x, x_754.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_760 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_759.x, x_759.y, x_760.z);
    let x_764 : f32 = u_xlat7.y;
    u_xlat13.x = max(abs(x_764), 1.1920929e-07f);
    let x_770 : f32 = u_xlat13.x;
    u_xlat13.x = log2(x_770);
    let x_774 : f32 = u_xlat13.x;
    u_xlat13.x = (x_774 * 2.400000095f);
    let x_779 : f32 = u_xlat13.x;
    u_xlat13.x = exp2(x_779);
    let x_784 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_784);
    let x_786 : bool = u_xlatb1;
    if (x_786) {
      let x_791 : f32 = u_xlat7.x;
      x_787 = x_791;
    } else {
      let x_794 : f32 = u_xlat13.x;
      x_787 = x_794;
    }
    let x_795 : f32 = x_787;
    u_xlat1.x = x_795;
    let x_798 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = (-(x_798) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_801 : vec4<f32> = u_xlat1;
    let x_803 : vec3<f32> = u_xlat7;
    let x_806 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_801.x, x_801.x, x_801.x) * x_803) + x_806);
    let x_808 : vec4<f32> = u_xlat0;
    let x_810 : vec3<f32> = u_xlat7;
    let x_812 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_808.x, x_808.y, x_808.z) * x_810) + -(vec3<f32>(x_812.x, x_812.y, x_812.z)));
    let x_818 : f32 = x_32.x_Vignette_Opacity;
    let x_820 : vec3<f32> = u_xlat7;
    let x_822 : vec4<f32> = u_xlat0;
    let x_824 : vec3<f32> = ((vec3<f32>(x_818, x_818, x_818) * x_820) + vec3<f32>(x_822.x, x_822.y, x_822.z));
    let x_825 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
    let x_828 : f32 = u_xlat0.w;
    u_xlat0.x = (x_828 + -1.0f);
    let x_832 : f32 = u_xlat1.x;
    let x_834 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_832 * x_834) + 1.0f);
  }
  let x_838 : vec4<f32> = u_xlat3;
  let x_841 : f32 = x_32.x_PostExposure;
  let x_843 : f32 = x_32.x_PostExposure;
  let x_845 : f32 = x_32.x_PostExposure;
  let x_847 : f32 = x_32.x_PostExposure;
  let x_848 : vec4<f32> = vec4<f32>(x_841, x_843, x_845, x_847);
  u_xlat0 = (x_838 * vec4<f32>(x_848.x, x_848.y, x_848.z, x_848.w));
  let x_855 : vec4<f32> = u_xlat0;
  let x_862 : vec3<f32> = ((vec3<f32>(x_855.z, x_855.x, x_855.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_863 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat1;
  let x_867 : vec3<f32> = log2(vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat1;
  let x_877 : vec3<f32> = ((vec3<f32>(x_870.x, x_870.y, x_870.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_878 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_880 : vec4<f32> = u_xlat1;
  let x_884 : vec3<f32> = clamp(vec3<f32>(x_880.x, x_880.y, x_880.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_885 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : vec4<f32> = u_xlat1;
  let x_891 : vec3<f32> = x_32.x_Lut2D_Params;
  u_xlat7 = (vec3<f32>(x_887.x, x_887.y, x_887.z) * vec3<f32>(x_891.z, x_891.z, x_891.z));
  let x_895 : f32 = u_xlat7.x;
  u_xlat7.x = floor(x_895);
  let x_899 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_902 : vec2<f32> = (vec2<f32>(x_899.x, x_899.y) * vec2<f32>(0.5f, 0.5f));
  let x_903 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_902.x, x_902.y, x_903.z);
  let x_905 : vec3<f32> = u_xlat7;
  let x_908 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_911 : vec3<f32> = u_xlat2;
  let x_913 : vec2<f32> = ((vec2<f32>(x_905.y, x_905.z) * vec2<f32>(x_908.x, x_908.y)) + vec2<f32>(x_911.x, x_911.y));
  let x_914 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_914.x, x_913.x, x_913.y);
  let x_917 : f32 = u_xlat7.x;
  let x_919 : f32 = x_32.x_Lut2D_Params.y;
  let x_922 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_917 * x_919) + x_922);
  let x_930 : vec3<f32> = u_xlat2;
  let x_932 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_930.x, x_930.z));
  let x_933 : vec3<f32> = vec3<f32>(x_932.x, x_932.y, x_932.z);
  let x_934 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_937 : f32 = x_32.x_Lut2D_Params.y;
  u_xlat4.x = x_937;
  u_xlat4.y = 0.0f;
  let x_940 : vec3<f32> = u_xlat2;
  let x_942 : vec4<f32> = u_xlat4;
  u_xlat13 = (vec2<f32>(x_940.x, x_940.z) + vec2<f32>(x_942.x, x_942.y));
  let x_948 : vec2<f32> = u_xlat13;
  let x_949 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_948);
  u_xlat2 = vec3<f32>(x_949.x, x_949.y, x_949.z);
  let x_952 : f32 = u_xlat1.x;
  let x_954 : f32 = x_32.x_Lut2D_Params.z;
  let x_957 : f32 = u_xlat7.x;
  u_xlat1.x = ((x_952 * x_954) + -(x_957));
  let x_961 : vec4<f32> = u_xlat3;
  let x_964 : vec3<f32> = u_xlat2;
  u_xlat7 = (-(vec3<f32>(x_961.x, x_961.y, x_961.z)) + x_964);
  let x_966 : vec4<f32> = u_xlat1;
  let x_968 : vec3<f32> = u_xlat7;
  let x_970 : vec4<f32> = u_xlat3;
  let x_972 : vec3<f32> = ((vec3<f32>(x_966.x, x_966.x, x_966.x) * x_968) + vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_973 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
  let x_977 : f32 = x_32.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_977);
  let x_979 : bool = u_xlatb1;
  if (x_979) {
    let x_982 : vec4<f32> = u_xlat0;
    let x_983 : vec3<f32> = vec3<f32>(x_982.x, x_982.y, x_982.z);
    let x_984 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
    let x_986 : vec4<f32> = u_xlat1;
    let x_990 : vec3<f32> = clamp(vec3<f32>(x_986.x, x_986.y, x_986.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_991 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
    let x_993 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_993.x, x_993.y, x_993.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1003 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1003;
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

