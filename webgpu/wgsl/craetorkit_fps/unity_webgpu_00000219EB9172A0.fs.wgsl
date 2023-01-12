struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

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
  var x_312 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_629 : f32;
  var x_641 : f32;
  var x_653 : f32;
  var x_710 : f32;
  var x_723 : f32;
  var x_735 : f32;
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
  let x_96 : i32 = u_xlati30;
  u_xlati30 = min(x_96, 16i);
  let x_99 : i32 = u_xlati30;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat10;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
  let x_114 : f32 = x_51.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_114);
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
  let x_137 : vec2<f32> = vs_TEXCOORD0;
  u_xlat21 = x_137;
  u_xlati_loop_1 = 0i;
  loop {
    let x_145 : i32 = u_xlati_loop_1;
    let x_146 : i32 = u_xlati30;
    if ((x_145 < x_146)) {
    } else {
      break;
    }
    let x_149 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_149);
    let x_153 : f32 = u_xlat16.x;
    u_xlat16.x = (x_153 + 0.5f);
    let x_157 : f32 = u_xlat16.x;
    let x_159 : f32 = u_xlat1.x;
    u_xlat2.x = (x_157 / x_159);
    let x_162 : vec2<f32> = u_xlat21;
    u_xlat16 = (x_162 + vec2<f32>(-0.5f, -0.5f));
    let x_167 : vec2<f32> = u_xlat16;
    let x_169 : vec4<f32> = x_51.x_Distortion_Amount;
    let x_172 : vec2<f32> = ((x_167 * vec2<f32>(x_169.z, x_169.z)) + vec2<f32>(0.5f, 0.5f));
    let x_173 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_172.x, x_172.y, x_173.z, x_173.w);
    let x_175 : vec2<f32> = u_xlat16;
    let x_177 : vec4<f32> = x_51.x_Distortion_Amount;
    let x_182 : vec4<f32> = x_51.x_Distortion_CenterScale;
    u_xlat16 = ((x_175 * vec2<f32>(x_177.z, x_177.z)) + -(vec2<f32>(x_182.x, x_182.y)));
    let x_186 : vec2<f32> = u_xlat16;
    let x_188 : vec4<f32> = x_51.x_Distortion_CenterScale;
    u_xlat16 = (x_186 * vec2<f32>(x_188.z, x_188.w));
    let x_192 : vec2<f32> = u_xlat16;
    let x_193 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_192, x_193);
    let x_195 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_195);
    let x_197 : bool = u_xlatb11;
    if (x_197) {
      let x_201 : f32 = u_xlat36;
      let x_204 : vec4<f32> = x_51.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_201, x_201) * vec2<f32>(x_204.x, x_204.y));
      let x_209 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_209);
      let x_213 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_213);
      let x_215 : f32 = u_xlat8;
      let x_216 : f32 = u_xlat9;
      u_xlat27.x = (x_215 / x_216);
      let x_221 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_221);
      let x_224 : f32 = u_xlat27.x;
      let x_225 : f32 = u_xlat37;
      u_xlat27.x = ((x_224 * x_225) + -1.0f);
      let x_229 : vec2<f32> = u_xlat16;
      let x_230 : vec2<f32> = u_xlat27;
      let x_233 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_229 * vec2<f32>(x_230.x, x_230.x)) + vec2<f32>(x_233.x, x_233.y));
    } else {
      let x_237 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_237);
      let x_239 : f32 = u_xlat8;
      let x_241 : f32 = x_51.x_Distortion_Amount.x;
      u_xlat8 = (x_239 * x_241);
      let x_243 : f32 = u_xlat36;
      let x_245 : f32 = x_51.x_Distortion_Amount.y;
      u_xlat36 = (x_243 * x_245);
      let x_248 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_248), 1.0f);
      let x_252 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_252), 1.0f);
      let x_255 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_255);
      let x_257 : f32 = u_xlat28;
      let x_258 : f32 = u_xlat18;
      u_xlat18 = (x_257 * x_258);
      let x_260 : f32 = u_xlat18;
      let x_261 : f32 = u_xlat18;
      u_xlat28 = (x_260 * x_261);
      let x_264 : f32 = u_xlat28;
      u_xlat38 = ((x_264 * 0.0208351f) + -0.085133001f);
      let x_269 : f32 = u_xlat28;
      let x_270 : f32 = u_xlat38;
      u_xlat38 = ((x_269 * x_270) + 0.180141002f);
      let x_274 : f32 = u_xlat28;
      let x_275 : f32 = u_xlat38;
      u_xlat38 = ((x_274 * x_275) + -0.330299497f);
      let x_279 : f32 = u_xlat28;
      let x_280 : f32 = u_xlat38;
      u_xlat28 = ((x_279 * x_280) + 0.999866009f);
      let x_284 : f32 = u_xlat28;
      let x_285 : f32 = u_xlat18;
      u_xlat38 = (x_284 * x_285);
      let x_288 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_288));
      let x_291 : f32 = u_xlat38;
      u_xlat38 = ((x_291 * -2.0f) + 1.570796371f);
      let x_296 : bool = u_xlatb9;
      let x_297 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_297, x_296);
      let x_299 : f32 = u_xlat18;
      let x_300 : f32 = u_xlat28;
      let x_302 : f32 = u_xlat38;
      u_xlat18 = ((x_299 * x_300) + x_302);
      let x_304 : f32 = u_xlat36;
      u_xlat36 = min(x_304, 1.0f);
      let x_307 : f32 = u_xlat36;
      let x_308 : f32 = u_xlat36;
      u_xlatb36 = (x_307 < -(x_308));
      let x_311 : bool = u_xlatb36;
      if (x_311) {
        let x_315 : f32 = u_xlat18;
        x_312 = -(x_315);
      } else {
        let x_318 : f32 = u_xlat18;
        x_312 = x_318;
      }
      let x_319 : f32 = x_312;
      u_xlat36 = x_319;
      let x_320 : f32 = u_xlat8;
      let x_321 : f32 = u_xlat36;
      u_xlat36 = ((x_320 * x_321) + -1.0f);
      let x_324 : vec2<f32> = u_xlat16;
      let x_325 : f32 = u_xlat36;
      let x_328 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_324 * vec2<f32>(x_325, x_325)) + vec2<f32>(x_328.x, x_328.y));
    }
    let x_331 : vec2<f32> = u_xlat27;
    u_xlat27 = x_331;
    let x_332 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_332, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_336 : vec2<f32> = u_xlat27;
    let x_338 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_336 * vec2<f32>(x_338, x_338));
    let x_346 : vec2<f32> = u_xlat16;
    let x_347 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_346, 0.0f);
    u_xlat7 = x_347;
    let x_353 : vec3<f32> = u_xlat2;
    let x_355 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_353.x, x_353.y), 0.0f);
    let x_356 : vec3<f32> = vec3<f32>(x_355.x, x_355.y, x_355.z);
    let x_357 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
    let x_359 : vec4<f32> = u_xlat7;
    let x_360 : vec4<f32> = u_xlat3;
    let x_362 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_359 * x_360) + x_362);
    let x_364 : vec4<f32> = u_xlat3;
    let x_365 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_364 + x_365);
    let x_367 : vec2<f32> = u_xlat10;
    let x_368 : vec2<f32> = u_xlat21;
    u_xlat21 = (x_367 + x_368);

    continuing {
      let x_370 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_370 + 1i);
    }
  }
  let x_372 : vec4<f32> = u_xlat4;
  let x_373 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_372 / x_373);
  let x_375 : vec4<f32> = u_xlat0;
  let x_377 : vec4<f32> = u_xlat1;
  let x_379 : vec3<f32> = (vec3<f32>(x_375.x, x_375.x, x_375.x) * vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec4<f32> = u_xlat1;
  let x_385 : f32 = x_51.x_PostExposure;
  let x_387 : f32 = x_51.x_PostExposure;
  let x_389 : f32 = x_51.x_PostExposure;
  let x_391 : f32 = x_51.x_PostExposure;
  let x_392 : vec4<f32> = vec4<f32>(x_385, x_387, x_389, x_391);
  u_xlat0 = (x_382 * vec4<f32>(x_392.x, x_392.y, x_392.z, x_392.w));
  let x_399 : vec4<f32> = u_xlat0;
  let x_406 : vec3<f32> = ((vec3<f32>(x_399.z, x_399.x, x_399.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat0;
  let x_411 : vec3<f32> = log2(vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat0;
  let x_421 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_422 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec4<f32> = u_xlat0;
  let x_428 : vec3<f32> = clamp(vec3<f32>(x_424.x, x_424.y, x_424.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_429 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : vec4<f32> = u_xlat0;
  let x_436 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_438 : vec3<f32> = (vec3<f32>(x_431.x, x_431.y, x_431.z) * vec3<f32>(x_436.z, x_436.z, x_436.z));
  let x_439 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_442 : f32 = u_xlat1.x;
  u_xlat10.x = floor(x_442);
  let x_446 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_448 : vec2<f32> = (vec2<f32>(x_446.x, x_446.y) * vec2<f32>(0.5f, 0.5f));
  let x_449 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_448.x, x_449.y, x_449.z, x_448.y);
  let x_451 : vec4<f32> = u_xlat1;
  let x_454 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_457 : vec4<f32> = u_xlat1;
  let x_459 : vec2<f32> = ((vec2<f32>(x_451.y, x_451.z) * vec2<f32>(x_454.x, x_454.y)) + vec2<f32>(x_457.x, x_457.w));
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_460.x, x_459.x, x_459.y, x_460.w);
  let x_463 : f32 = u_xlat10.x;
  let x_465 : f32 = x_51.x_Lut2D_Params.y;
  let x_468 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_463 * x_465) + x_468);
  let x_476 : vec4<f32> = u_xlat1;
  let x_478 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_476.x, x_476.z));
  let x_479 : vec3<f32> = vec3<f32>(x_478.x, x_478.y, x_478.z);
  let x_480 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
  let x_483 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat22.x = x_483;
  let x_485 : vec2<f32> = u_xlat22;
  let x_486 : vec4<f32> = u_xlat1;
  let x_488 : vec2<f32> = (x_485 + vec2<f32>(x_486.x, x_486.z));
  let x_489 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
  let x_494 : vec4<f32> = u_xlat1;
  let x_496 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_494.x, x_494.y));
  let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.z);
  let x_498 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  let x_501 : f32 = u_xlat0.x;
  let x_503 : f32 = x_51.x_Lut2D_Params.z;
  let x_506 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_501 * x_503) + -(x_506));
  let x_510 : vec4<f32> = u_xlat3;
  let x_513 : vec4<f32> = u_xlat1;
  let x_515 : vec3<f32> = (-(vec3<f32>(x_510.x, x_510.y, x_510.z)) + vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat0;
  let x_520 : vec4<f32> = u_xlat1;
  let x_523 : vec4<f32> = u_xlat3;
  let x_525 : vec3<f32> = ((vec3<f32>(x_518.x, x_518.x, x_518.x) * vec3<f32>(x_520.x, x_520.y, x_520.z)) + vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_526 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_528 : vec2<f32> = vs_TEXCOORD0;
  let x_530 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_534 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_536 : vec2<f32> = ((x_528 * vec2<f32>(x_530.x, x_530.y)) + vec2<f32>(x_534.z, x_534.w));
  let x_537 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_536.x, x_536.y, x_537.z, x_537.w);
  let x_544 : vec4<f32> = u_xlat1;
  let x_546 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_544.x, x_544.y));
  u_xlat1.x = x_546.w;
  let x_550 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_550 * 2.0f) + -1.0f);
  let x_556 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_556 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_562 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_562, 0.0f, 1.0f);
  let x_566 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_566 * 2.0f) + -1.0f);
  let x_571 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_571)) + 1.0f);
  let x_577 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_577);
  let x_581 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_581) + 1.0f);
  let x_586 : f32 = u_xlat1.x;
  let x_588 : f32 = u_xlat11.x;
  u_xlat1.x = (x_586 * x_588);
  let x_591 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_591.x, x_591.y, x_591.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_596 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_596.x, x_596.y, x_596.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_602 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_602);
  let x_604 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_604 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_608 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_608);
  let x_610 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_610 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_622 : vec4<f32> = u_xlat0;
  let x_625 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_622.x, x_622.y, x_622.z, x_622.x));
  u_xlatb0 = vec3<bool>(x_625.x, x_625.y, x_625.z);
  let x_628 : bool = u_xlatb0.x;
  if (x_628) {
    let x_633 : f32 = u_xlat11.x;
    x_629 = x_633;
  } else {
    let x_636 : f32 = u_xlat2.x;
    x_629 = x_636;
  }
  let x_637 : f32 = x_629;
  u_xlat0.x = x_637;
  let x_640 : bool = u_xlatb0.y;
  if (x_640) {
    let x_645 : f32 = u_xlat11.y;
    x_641 = x_645;
  } else {
    let x_648 : f32 = u_xlat2.y;
    x_641 = x_648;
  }
  let x_649 : f32 = x_641;
  u_xlat0.y = x_649;
  let x_652 : bool = u_xlatb0.z;
  if (x_652) {
    let x_657 : f32 = u_xlat11.z;
    x_653 = x_657;
  } else {
    let x_660 : f32 = u_xlat2.z;
    x_653 = x_660;
  }
  let x_661 : f32 = x_653;
  u_xlat0.z = x_661;
  let x_663 : vec4<f32> = u_xlat1;
  let x_668 : vec4<f32> = u_xlat0;
  let x_670 : vec3<f32> = ((vec3<f32>(x_663.x, x_663.x, x_663.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_668.x, x_668.y, x_668.z));
  let x_671 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat0;
  let x_677 : vec3<f32> = (vec3<f32>(x_673.x, x_673.y, x_673.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_678 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_680.x, x_680.y, x_680.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_685 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_685 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_689 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_689), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_692 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_692);
  let x_694 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_694 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_698 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_698);
  let x_702 : vec4<f32> = u_xlat0;
  let x_704 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_702.x, x_702.y, x_702.z, x_702.x));
  u_xlatb0 = vec3<bool>(x_704.x, x_704.y, x_704.z);
  let x_709 : bool = u_xlatb0.x;
  if (x_709) {
    let x_714 : f32 = u_xlat1.x;
    x_710 = x_714;
  } else {
    let x_717 : f32 = u_xlat2.x;
    x_710 = x_717;
  }
  let x_718 : f32 = x_710;
  SV_Target0.x = x_718;
  let x_722 : bool = u_xlatb0.y;
  if (x_722) {
    let x_727 : f32 = u_xlat1.y;
    x_723 = x_727;
  } else {
    let x_730 : f32 = u_xlat2.y;
    x_723 = x_730;
  }
  let x_731 : f32 = x_723;
  SV_Target0.y = x_731;
  let x_734 : bool = u_xlatb0.z;
  if (x_734) {
    let x_739 : f32 = u_xlat1.z;
    x_735 = x_739;
  } else {
    let x_742 : f32 = u_xlat2.z;
    x_735 = x_742;
  }
  let x_743 : f32 = x_735;
  SV_Target0.z = x_743;
  let x_746 : f32 = u_xlat0.w;
  SV_Target0.w = x_746;
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

