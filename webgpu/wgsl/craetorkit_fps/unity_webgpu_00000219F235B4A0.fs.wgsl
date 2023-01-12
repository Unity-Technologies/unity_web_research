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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding_3 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_4 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_5 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(11) var sampler_Lut3D : sampler;

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
  var x_775 : f32;
  var u_xlat18 : f32;
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
    u_xlat7 = (vec3<f32>(x_722.x, x_722.y, x_722.z) * x_724);
    let x_727 : f32 = u_xlat0.w;
    u_xlat2.x = (x_727 + -1.0f);
    let x_731 : f32 = u_xlat1.x;
    let x_733 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_731 * x_733) + 1.0f);
  } else {
    let x_743 : vec2<f32> = u_xlat14;
    let x_744 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_743);
    u_xlat1.x = x_744.w;
    let x_748 : f32 = u_xlat1.x;
    u_xlat2.x = (x_748 * 0.077399381f);
    let x_753 : f32 = u_xlat1.x;
    u_xlat8 = (x_753 + 0.055f);
    let x_756 : f32 = u_xlat8;
    u_xlat8 = (x_756 * 0.947867334f);
    let x_759 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_759), 1.1920929e-07f);
    let x_763 : f32 = u_xlat8;
    u_xlat8 = log2(x_763);
    let x_765 : f32 = u_xlat8;
    u_xlat8 = (x_765 * 2.400000095f);
    let x_768 : f32 = u_xlat8;
    u_xlat8 = exp2(x_768);
    let x_772 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_772);
    let x_774 : bool = u_xlatb1;
    if (x_774) {
      let x_779 : f32 = u_xlat2.x;
      x_775 = x_779;
    } else {
      let x_781 : f32 = u_xlat8;
      x_775 = x_781;
    }
    let x_782 : f32 = x_775;
    u_xlat1.x = x_782;
    let x_785 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat2 = (-(x_785) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_788 : vec4<f32> = u_xlat1;
    let x_790 : vec3<f32> = u_xlat2;
    let x_793 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_788.x, x_788.x, x_788.x) * x_790) + x_793);
    let x_795 : vec4<f32> = u_xlat0;
    let x_797 : vec3<f32> = u_xlat2;
    let x_799 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_795.x, x_795.y, x_795.z) * x_797) + -(vec3<f32>(x_799.x, x_799.y, x_799.z)));
    let x_805 : f32 = x_32.x_Vignette_Opacity;
    let x_807 : vec3<f32> = u_xlat2;
    let x_809 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_805, x_805, x_805) * x_807) + vec3<f32>(x_809.x, x_809.y, x_809.z));
    let x_813 : f32 = u_xlat0.w;
    u_xlat0.x = (x_813 + -1.0f);
    let x_817 : f32 = u_xlat1.x;
    let x_819 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_817 * x_819) + 1.0f);
  }
  let x_823 : vec4<f32> = phase0_Input0_1;
  let x_827 : vec4<f32> = x_32.x_Grain_Params2;
  let x_831 : vec4<f32> = x_32.x_Grain_Params2;
  let x_833 : vec2<f32> = ((vec2<f32>(x_823.z, x_823.w) * vec2<f32>(x_827.x, x_827.y)) + vec2<f32>(x_831.z, x_831.w));
  let x_834 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_833.x, x_833.y, x_834.z, x_834.w);
  let x_841 : vec4<f32> = u_xlat0;
  let x_843 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_841.x, x_841.y));
  let x_844 : vec3<f32> = vec3<f32>(x_843.x, x_843.y, x_843.z);
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec3<f32> = u_xlat7;
  u_xlat2 = x_847;
  let x_848 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_848, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_853 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_853, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_859 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_859);
  let x_863 : f32 = x_32.x_Grain_Params1.x;
  let x_864 : f32 = u_xlat18;
  u_xlat18 = ((x_863 * -(x_864)) + 1.0f);
  let x_868 : vec4<f32> = u_xlat0;
  let x_870 : vec3<f32> = u_xlat7;
  let x_871 : vec3<f32> = (vec3<f32>(x_868.x, x_868.y, x_868.z) * x_870);
  let x_872 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat0;
  let x_877 : f32 = x_32.x_Grain_Params1.y;
  let x_879 : f32 = x_32.x_Grain_Params1.y;
  let x_881 : f32 = x_32.x_Grain_Params1.y;
  let x_883 : vec3<f32> = (vec3<f32>(x_874.x, x_874.y, x_874.z) * vec3<f32>(x_877, x_879, x_881));
  let x_884 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat0;
  let x_888 : f32 = u_xlat18;
  let x_891 : vec3<f32> = u_xlat7;
  let x_892 : vec3<f32> = ((vec3<f32>(x_886.x, x_886.y, x_886.z) * vec3<f32>(x_888, x_888, x_888)) + x_891);
  let x_893 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec4<f32> = u_xlat3;
  let x_899 : f32 = x_32.x_PostExposure;
  let x_901 : f32 = x_32.x_PostExposure;
  let x_903 : f32 = x_32.x_PostExposure;
  let x_905 : f32 = x_32.x_PostExposure;
  let x_906 : vec4<f32> = vec4<f32>(x_899, x_901, x_903, x_905);
  u_xlat0 = (vec4<f32>(x_895.w, x_895.x, x_895.y, x_895.z) * vec4<f32>(x_906.x, x_906.y, x_906.z, x_906.w));
  let x_913 : vec4<f32> = u_xlat0;
  let x_920 : vec3<f32> = ((vec3<f32>(x_913.y, x_913.z, x_913.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_921 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec4<f32> = u_xlat1;
  let x_925 : vec3<f32> = log2(vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec4<f32> = u_xlat1;
  let x_935 : vec3<f32> = ((vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_936 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat1;
  let x_942 : vec3<f32> = clamp(vec3<f32>(x_938.x, x_938.y, x_938.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_943 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : vec4<f32> = u_xlat1;
  let x_949 : vec2<f32> = x_32.x_Lut3D_Params;
  let x_951 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) * vec3<f32>(x_949.y, x_949.y, x_949.y));
  let x_952 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_955 : f32 = x_32.x_Lut3D_Params.x;
  u_xlat19 = (x_955 * 0.5f);
  let x_957 : vec4<f32> = u_xlat1;
  let x_960 : vec2<f32> = x_32.x_Lut3D_Params;
  let x_963 : f32 = u_xlat19;
  let x_965 : vec3<f32> = ((vec3<f32>(x_957.x, x_957.y, x_957.z) * vec3<f32>(x_960.x, x_960.x, x_960.x)) + vec3<f32>(x_963, x_963, x_963));
  let x_966 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_976 : vec4<f32> = u_xlat1;
  let x_978 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_976.x, x_976.y, x_976.z));
  let x_979 : vec3<f32> = vec3<f32>(x_978.x, x_978.y, x_978.z);
  let x_980 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_980.x, x_979.x, x_979.y, x_979.z);
  let x_984 : f32 = x_32.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_984);
  let x_986 : bool = u_xlatb1;
  if (x_986) {
    let x_989 : vec4<f32> = u_xlat0;
    let x_990 : vec3<f32> = vec3<f32>(x_989.y, x_989.z, x_989.w);
    let x_991 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
    let x_993 : vec4<f32> = u_xlat1;
    let x_997 : vec3<f32> = clamp(vec3<f32>(x_993.x, x_993.y, x_993.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_998 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
    let x_1000 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_1000.x, x_1000.y, x_1000.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1006 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_1006.y, x_1006.z, x_1006.w, x_1006.x);
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
