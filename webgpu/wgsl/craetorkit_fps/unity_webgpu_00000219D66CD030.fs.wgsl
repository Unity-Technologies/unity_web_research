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
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_51 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

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
  var x_709 : f32;
  var x_721 : f32;
  var x_733 : f32;
  var x_790 : f32;
  var x_803 : f32;
  var x_815 : f32;
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
  let x_380 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_383 : vec2<f32> = vs_TEXCOORD1;
  let x_386 : vec4<f32> = x_51.x_Grain_Params2;
  let x_390 : vec4<f32> = x_51.x_Grain_Params2;
  let x_392 : vec2<f32> = ((x_383 * vec2<f32>(x_386.x, x_386.y)) + vec2<f32>(x_390.z, x_390.w));
  let x_393 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_392.x, x_392.y, x_393.z);
  let x_400 : vec3<f32> = u_xlat2;
  let x_402 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_400.x, x_400.y));
  let x_403 : vec3<f32> = vec3<f32>(x_402.x, x_402.y, x_402.z);
  let x_404 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat0;
  let x_407 : vec3<f32> = vec3<f32>(x_406.x, x_406.y, x_406.z);
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_410 : vec4<f32> = u_xlat4;
  let x_414 : vec3<f32> = clamp(vec3<f32>(x_410.x, x_410.y, x_410.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_415 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(vec3<f32>(x_417.x, x_417.y, x_417.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_424 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_424);
  let x_428 : f32 = x_51.x_Grain_Params1.x;
  let x_429 : f32 = u_xlat30;
  u_xlat30 = ((x_428 * -(x_429)) + 1.0f);
  let x_433 : vec4<f32> = u_xlat0;
  let x_435 : vec4<f32> = u_xlat3;
  let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat3;
  let x_443 : f32 = x_51.x_Grain_Params1.y;
  let x_445 : f32 = x_51.x_Grain_Params1.y;
  let x_447 : f32 = x_51.x_Grain_Params1.y;
  let x_449 : vec3<f32> = (vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(x_443, x_445, x_447));
  let x_450 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat3;
  let x_454 : f32 = u_xlat30;
  let x_457 : vec4<f32> = u_xlat0;
  let x_459 : vec3<f32> = ((vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_454, x_454, x_454)) + vec3<f32>(x_457.x, x_457.y, x_457.z));
  let x_460 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec4<f32> = u_xlat1;
  let x_465 : f32 = x_51.x_PostExposure;
  let x_467 : f32 = x_51.x_PostExposure;
  let x_469 : f32 = x_51.x_PostExposure;
  let x_471 : f32 = x_51.x_PostExposure;
  let x_472 : vec4<f32> = vec4<f32>(x_465, x_467, x_469, x_471);
  u_xlat0 = (x_462 * vec4<f32>(x_472.x, x_472.y, x_472.z, x_472.w));
  let x_479 : vec4<f32> = u_xlat0;
  let x_486 : vec3<f32> = ((vec3<f32>(x_479.z, x_479.x, x_479.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_487 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat0;
  let x_491 : vec3<f32> = log2(vec3<f32>(x_489.x, x_489.y, x_489.z));
  let x_492 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
  let x_494 : vec4<f32> = u_xlat0;
  let x_501 : vec3<f32> = ((vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_502 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  let x_504 : vec4<f32> = u_xlat0;
  let x_508 : vec3<f32> = clamp(vec3<f32>(x_504.x, x_504.y, x_504.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_509 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat0;
  let x_516 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_518 : vec3<f32> = (vec3<f32>(x_511.x, x_511.y, x_511.z) * vec3<f32>(x_516.z, x_516.z, x_516.z));
  let x_519 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_518.x, x_518.y, x_518.z, x_519.w);
  let x_522 : f32 = u_xlat1.x;
  u_xlat10.x = floor(x_522);
  let x_526 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_528 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(0.5f, 0.5f));
  let x_529 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_528.x, x_529.y, x_529.z, x_528.y);
  let x_531 : vec4<f32> = u_xlat1;
  let x_534 : vec3<f32> = x_51.x_Lut2D_Params;
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : vec2<f32> = ((vec2<f32>(x_531.y, x_531.z) * vec2<f32>(x_534.x, x_534.y)) + vec2<f32>(x_537.x, x_537.w));
  let x_540 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_540.x, x_539.x, x_539.y, x_540.w);
  let x_543 : f32 = u_xlat10.x;
  let x_545 : f32 = x_51.x_Lut2D_Params.y;
  let x_548 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_543 * x_545) + x_548);
  let x_556 : vec4<f32> = u_xlat1;
  let x_558 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_556.x, x_556.z));
  let x_559 : vec3<f32> = vec3<f32>(x_558.x, x_558.y, x_558.z);
  let x_560 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_563 : f32 = x_51.x_Lut2D_Params.y;
  u_xlat22.x = x_563;
  let x_565 : vec2<f32> = u_xlat22;
  let x_566 : vec4<f32> = u_xlat1;
  let x_568 : vec2<f32> = (x_565 + vec2<f32>(x_566.x, x_566.z));
  let x_569 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_568.x, x_568.y, x_569.z, x_569.w);
  let x_574 : vec4<f32> = u_xlat1;
  let x_576 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_574.x, x_574.y));
  let x_577 : vec3<f32> = vec3<f32>(x_576.x, x_576.y, x_576.z);
  let x_578 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_581 : f32 = u_xlat0.x;
  let x_583 : f32 = x_51.x_Lut2D_Params.z;
  let x_586 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_581 * x_583) + -(x_586));
  let x_590 : vec4<f32> = u_xlat3;
  let x_593 : vec4<f32> = u_xlat1;
  let x_595 : vec3<f32> = (-(vec3<f32>(x_590.x, x_590.y, x_590.z)) + vec3<f32>(x_593.x, x_593.y, x_593.z));
  let x_596 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_598 : vec4<f32> = u_xlat0;
  let x_600 : vec4<f32> = u_xlat1;
  let x_603 : vec4<f32> = u_xlat3;
  let x_605 : vec3<f32> = ((vec3<f32>(x_598.x, x_598.x, x_598.x) * vec3<f32>(x_600.x, x_600.y, x_600.z)) + vec3<f32>(x_603.x, x_603.y, x_603.z));
  let x_606 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec2<f32> = vs_TEXCOORD0;
  let x_610 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_614 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_616 : vec2<f32> = ((x_608 * vec2<f32>(x_610.x, x_610.y)) + vec2<f32>(x_614.z, x_614.w));
  let x_617 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
  let x_624 : vec4<f32> = u_xlat1;
  let x_626 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_624.x, x_624.y));
  u_xlat1.x = x_626.w;
  let x_630 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_630 * 2.0f) + -1.0f);
  let x_636 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_636 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_642 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_642, 0.0f, 1.0f);
  let x_646 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_646 * 2.0f) + -1.0f);
  let x_651 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_651)) + 1.0f);
  let x_657 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_657);
  let x_661 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_661) + 1.0f);
  let x_666 : f32 = u_xlat1.x;
  let x_668 : f32 = u_xlat11.x;
  u_xlat1.x = (x_666 * x_668);
  let x_671 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_671.x, x_671.y, x_671.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_676 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_676.x, x_676.y, x_676.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_682 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_682);
  let x_684 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_684 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_688 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_688);
  let x_690 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_690 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_702 : vec4<f32> = u_xlat0;
  let x_705 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_702.x, x_702.y, x_702.z, x_702.x));
  u_xlatb0 = vec3<bool>(x_705.x, x_705.y, x_705.z);
  let x_708 : bool = u_xlatb0.x;
  if (x_708) {
    let x_713 : f32 = u_xlat11.x;
    x_709 = x_713;
  } else {
    let x_716 : f32 = u_xlat2.x;
    x_709 = x_716;
  }
  let x_717 : f32 = x_709;
  u_xlat0.x = x_717;
  let x_720 : bool = u_xlatb0.y;
  if (x_720) {
    let x_725 : f32 = u_xlat11.y;
    x_721 = x_725;
  } else {
    let x_728 : f32 = u_xlat2.y;
    x_721 = x_728;
  }
  let x_729 : f32 = x_721;
  u_xlat0.y = x_729;
  let x_732 : bool = u_xlatb0.z;
  if (x_732) {
    let x_737 : f32 = u_xlat11.z;
    x_733 = x_737;
  } else {
    let x_740 : f32 = u_xlat2.z;
    x_733 = x_740;
  }
  let x_741 : f32 = x_733;
  u_xlat0.z = x_741;
  let x_743 : vec4<f32> = u_xlat1;
  let x_748 : vec4<f32> = u_xlat0;
  let x_750 : vec3<f32> = ((vec3<f32>(x_743.x, x_743.x, x_743.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_751 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_753 : vec4<f32> = u_xlat0;
  let x_757 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_758 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_760.x, x_760.y, x_760.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_765 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_765 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_769 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_769), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_772 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_772);
  let x_774 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_774 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_778 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_778);
  let x_782 : vec4<f32> = u_xlat0;
  let x_784 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_782.x, x_782.y, x_782.z, x_782.x));
  u_xlatb0 = vec3<bool>(x_784.x, x_784.y, x_784.z);
  let x_789 : bool = u_xlatb0.x;
  if (x_789) {
    let x_794 : f32 = u_xlat1.x;
    x_790 = x_794;
  } else {
    let x_797 : f32 = u_xlat2.x;
    x_790 = x_797;
  }
  let x_798 : f32 = x_790;
  SV_Target0.x = x_798;
  let x_802 : bool = u_xlatb0.y;
  if (x_802) {
    let x_807 : f32 = u_xlat1.y;
    x_803 = x_807;
  } else {
    let x_810 : f32 = u_xlat2.y;
    x_803 = x_810;
  }
  let x_811 : f32 = x_803;
  SV_Target0.y = x_811;
  let x_814 : bool = u_xlatb0.z;
  if (x_814) {
    let x_819 : f32 = u_xlat1.z;
    x_815 = x_819;
  } else {
    let x_822 : f32 = u_xlat2.z;
    x_815 = x_822;
  }
  let x_823 : f32 = x_815;
  SV_Target0.z = x_823;
  let x_826 : f32 = u_xlat0.w;
  SV_Target0.w = x_826;
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

