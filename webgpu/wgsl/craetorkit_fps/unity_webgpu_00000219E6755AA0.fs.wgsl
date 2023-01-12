struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_LumaInAlpha : f32,
}

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(6) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat30 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati30 : i32;
  var u_xlatb11 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat22 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat21 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlat8 : f32;
  var u_xlat9 : f32;
  var u_xlat37 : f32;
  var u_xlat18 : f32;
  var u_xlat28 : f32;
  var u_xlat38 : f32;
  var u_xlatb9 : bool;
  var u_xlatb36 : bool;
  var x_311 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat10;
  let x_41 : vec2<f32> = u_xlat10;
  u_xlat30 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat30;
  let x_45 : vec2<f32> = u_xlat10;
  u_xlat10 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat10;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat10 = (x_47 * vec2<f32>(x_59.x, x_59.y));
  let x_65 : vec2<f32> = u_xlat10;
  let x_70 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_72 : vec2<f32> = (-(x_65) * vec2<f32>(x_70.z, x_70.w));
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_72.x, x_72.y, x_73.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat1;
  let x_79 : vec2<f32> = (vec2<f32>(x_75.x, x_75.y) * vec2<f32>(0.5f, 0.5f));
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_80.w);
  let x_82 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec2<f32>(x_82.x, x_82.y), vec2<f32>(x_84.x, x_84.y));
  let x_87 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_87);
  let x_91 : f32 = u_xlat30;
  u_xlati30 = i32(x_91);
  let x_93 : i32 = u_xlati30;
  u_xlati30 = max(x_93, 3i);
  let x_95 : i32 = u_xlati30;
  u_xlati30 = min(x_95, 16i);
  let x_98 : i32 = u_xlati30;
  u_xlat1.x = f32(x_98);
  let x_101 : vec2<f32> = u_xlat10;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_101) / vec2<f32>(x_103.x, x_103.x));
  let x_113 : f32 = x_51.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_113);
  u_xlat2.y = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_136 : vec2<f32> = vs_TEXCOORD0;
  u_xlat21 = x_136;
  u_xlati_loop_1 = 0i;
  loop {
    let x_144 : i32 = u_xlati_loop_1;
    let x_145 : i32 = u_xlati30;
    if ((x_144 < x_145)) {
    } else {
      break;
    }
    let x_148 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_148);
    let x_152 : f32 = u_xlat16.x;
    u_xlat16.x = (x_152 + 0.5f);
    let x_156 : f32 = u_xlat16.x;
    let x_158 : f32 = u_xlat1.x;
    u_xlat2.x = (x_156 / x_158);
    let x_161 : vec2<f32> = u_xlat21;
    u_xlat16 = (x_161 + vec2<f32>(-0.5f, -0.5f));
    let x_166 : vec2<f32> = u_xlat16;
    let x_168 : vec4<f32> = x_51.x_Distortion_Amount;
    let x_171 : vec2<f32> = ((x_166 * vec2<f32>(x_168.z, x_168.z)) + vec2<f32>(0.5f, 0.5f));
    let x_172 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_171.x, x_171.y, x_172.z, x_172.w);
    let x_174 : vec2<f32> = u_xlat16;
    let x_176 : vec4<f32> = x_51.x_Distortion_Amount;
    let x_181 : vec4<f32> = x_51.x_Distortion_CenterScale;
    u_xlat16 = ((x_174 * vec2<f32>(x_176.z, x_176.z)) + -(vec2<f32>(x_181.x, x_181.y)));
    let x_185 : vec2<f32> = u_xlat16;
    let x_187 : vec4<f32> = x_51.x_Distortion_CenterScale;
    u_xlat16 = (x_185 * vec2<f32>(x_187.z, x_187.w));
    let x_191 : vec2<f32> = u_xlat16;
    let x_192 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_191, x_192);
    let x_194 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_194);
    let x_196 : bool = u_xlatb11;
    if (x_196) {
      let x_200 : f32 = u_xlat36;
      let x_203 : vec4<f32> = x_51.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_200, x_200) * vec2<f32>(x_203.x, x_203.y));
      let x_208 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_208);
      let x_212 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_212);
      let x_214 : f32 = u_xlat8;
      let x_215 : f32 = u_xlat9;
      u_xlat27.x = (x_214 / x_215);
      let x_220 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_220);
      let x_223 : f32 = u_xlat27.x;
      let x_224 : f32 = u_xlat37;
      u_xlat27.x = ((x_223 * x_224) + -1.0f);
      let x_228 : vec2<f32> = u_xlat16;
      let x_229 : vec2<f32> = u_xlat27;
      let x_232 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_228 * vec2<f32>(x_229.x, x_229.x)) + vec2<f32>(x_232.x, x_232.y));
    } else {
      let x_236 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_236);
      let x_238 : f32 = u_xlat8;
      let x_240 : f32 = x_51.x_Distortion_Amount.x;
      u_xlat8 = (x_238 * x_240);
      let x_242 : f32 = u_xlat36;
      let x_244 : f32 = x_51.x_Distortion_Amount.y;
      u_xlat36 = (x_242 * x_244);
      let x_247 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_247), 1.0f);
      let x_251 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_251), 1.0f);
      let x_254 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_254);
      let x_256 : f32 = u_xlat28;
      let x_257 : f32 = u_xlat18;
      u_xlat18 = (x_256 * x_257);
      let x_259 : f32 = u_xlat18;
      let x_260 : f32 = u_xlat18;
      u_xlat28 = (x_259 * x_260);
      let x_263 : f32 = u_xlat28;
      u_xlat38 = ((x_263 * 0.0208351f) + -0.085133001f);
      let x_268 : f32 = u_xlat28;
      let x_269 : f32 = u_xlat38;
      u_xlat38 = ((x_268 * x_269) + 0.180141002f);
      let x_273 : f32 = u_xlat28;
      let x_274 : f32 = u_xlat38;
      u_xlat38 = ((x_273 * x_274) + -0.330299497f);
      let x_278 : f32 = u_xlat28;
      let x_279 : f32 = u_xlat38;
      u_xlat28 = ((x_278 * x_279) + 0.999866009f);
      let x_283 : f32 = u_xlat28;
      let x_284 : f32 = u_xlat18;
      u_xlat38 = (x_283 * x_284);
      let x_287 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_287));
      let x_290 : f32 = u_xlat38;
      u_xlat38 = ((x_290 * -2.0f) + 1.570796371f);
      let x_295 : bool = u_xlatb9;
      let x_296 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_296, x_295);
      let x_298 : f32 = u_xlat18;
      let x_299 : f32 = u_xlat28;
      let x_301 : f32 = u_xlat38;
      u_xlat18 = ((x_298 * x_299) + x_301);
      let x_303 : f32 = u_xlat36;
      u_xlat36 = min(x_303, 1.0f);
      let x_306 : f32 = u_xlat36;
      let x_307 : f32 = u_xlat36;
      u_xlatb36 = (x_306 < -(x_307));
      let x_310 : bool = u_xlatb36;
      if (x_310) {
        let x_314 : f32 = u_xlat18;
        x_311 = -(x_314);
      } else {
        let x_317 : f32 = u_xlat18;
        x_311 = x_317;
      }
      let x_318 : f32 = x_311;
      u_xlat36 = x_318;
      let x_319 : f32 = u_xlat8;
      let x_320 : f32 = u_xlat36;
      u_xlat36 = ((x_319 * x_320) + -1.0f);
      let x_323 : vec2<f32> = u_xlat16;
      let x_324 : f32 = u_xlat36;
      let x_327 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_323 * vec2<f32>(x_324, x_324)) + vec2<f32>(x_327.x, x_327.y));
    }
    let x_330 : vec2<f32> = u_xlat27;
    u_xlat27 = x_330;
    let x_331 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_331, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_335 : vec2<f32> = u_xlat27;
    let x_337 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_335 * vec2<f32>(x_337, x_337));
    let x_345 : vec2<f32> = u_xlat16;
    let x_346 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_345, 0.0f);
    u_xlat7 = x_346;
    let x_352 : vec3<f32> = u_xlat2;
    let x_354 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_352.x, x_352.y), 0.0f);
    let x_355 : vec3<f32> = vec3<f32>(x_354.x, x_354.y, x_354.z);
    let x_356 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
    let x_358 : vec4<f32> = u_xlat7;
    let x_359 : vec4<f32> = u_xlat3;
    let x_361 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_358 * x_359) + x_361);
    let x_363 : vec4<f32> = u_xlat3;
    let x_364 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_363 + x_364);
    let x_366 : vec2<f32> = u_xlat10;
    let x_367 : vec2<f32> = u_xlat21;
    u_xlat21 = (x_366 + x_367);

    continuing {
      let x_369 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_369 + 1i);
    }
  }
  let x_371 : vec4<f32> = u_xlat4;
  let x_372 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_371 / x_372);
  let x_374 : vec4<f32> = u_xlat0;
  let x_376 : vec4<f32> = u_xlat1;
  let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.x, x_374.x) * vec3<f32>(x_376.x, x_376.y, x_376.z));
  let x_379 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat1;
  let x_384 : f32 = x_51.x_PostExposure;
  let x_386 : f32 = x_51.x_PostExposure;
  let x_388 : f32 = x_51.x_PostExposure;
  let x_390 : f32 = x_51.x_PostExposure;
  let x_391 : vec4<f32> = vec4<f32>(x_384, x_386, x_388, x_390);
  u_xlat0 = (x_381 * vec4<f32>(x_391.x, x_391.y, x_391.z, x_391.w));
  let x_398 : vec4<f32> = u_xlat0;
  let x_405 : vec3<f32> = ((vec3<f32>(x_398.z, x_398.x, x_398.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_406 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_408 : vec4<f32> = u_xlat1;
  let x_410 : vec3<f32> = log2(vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : vec4<f32> = u_xlat1;
  let x_420 : vec3<f32> = ((vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_421 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat1;
  let x_427 : vec3<f32> = clamp(vec3<f32>(x_423.x, x_423.y, x_423.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_428 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_431 : vec4<f32> = u_xlat1;
  let x_436 : vec3<f32> = x_51.x_Lut2D_Params;
  u_xlat11 = (vec3<f32>(x_431.x, x_431.y, x_431.z) * vec3<f32>(x_436.z, x_436.z, x_436.z));
  let x_440 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_440);
  let x_444 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_446 : vec2<f32> = (vec2<f32>(x_444.x, x_444.y) * vec2<f32>(0.5f, 0.5f));
  let x_447 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_446.x, x_446.y, x_447.z);
  let x_449 : vec3<f32> = u_xlat11;
  let x_452 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_455 : vec3<f32> = u_xlat2;
  let x_457 : vec2<f32> = ((vec2<f32>(x_449.y, x_449.z) * vec2<f32>(x_452.x, x_452.y)) + vec2<f32>(x_455.x, x_455.y));
  let x_458 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_458.x, x_457.x, x_457.y, x_458.w);
  let x_461 : f32 = u_xlat11.x;
  let x_463 : f32 = x_51.x_Lut2D_Params.y;
  let x_466 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_461 * x_463) + x_466);
  let x_474 : vec4<f32> = u_xlat3;
  let x_476 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_474.x, x_474.z));
  let x_477 : vec3<f32> = vec3<f32>(x_476.x, x_476.y, x_476.z);
  let x_478 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  let x_481 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat22.x = x_481;
  let x_483 : vec2<f32> = u_xlat22;
  let x_484 : vec4<f32> = u_xlat3;
  u_xlat21 = (x_483 + vec2<f32>(x_484.x, x_484.z));
  let x_490 : vec2<f32> = u_xlat21;
  let x_491 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_490);
  u_xlat2 = vec3<f32>(x_491.x, x_491.y, x_491.z);
  let x_494 : f32 = u_xlat1.x;
  let x_496 : f32 = x_51.x_Lut2D_Params.z;
  let x_499 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_494 * x_496) + -(x_499));
  let x_503 : vec4<f32> = u_xlat4;
  let x_506 : vec3<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_503.x, x_503.y, x_503.z)) + x_506);
  let x_508 : vec4<f32> = u_xlat1;
  let x_510 : vec3<f32> = u_xlat11;
  let x_512 : vec4<f32> = u_xlat4;
  let x_514 : vec3<f32> = ((vec3<f32>(x_508.x, x_508.x, x_508.x) * x_510) + vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_520 : f32 = x_51.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_520);
  let x_522 : bool = u_xlatb1;
  if (x_522) {
    let x_525 : vec4<f32> = u_xlat0;
    let x_526 : vec3<f32> = vec3<f32>(x_525.x, x_525.y, x_525.z);
    let x_527 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
    let x_529 : vec4<f32> = u_xlat1;
    let x_533 : vec3<f32> = clamp(vec3<f32>(x_529.x, x_529.y, x_529.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_534 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
    let x_536 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_536.x, x_536.y, x_536.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_546 : vec4<f32> = u_xlat0;
  SV_Target0 = x_546;
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

