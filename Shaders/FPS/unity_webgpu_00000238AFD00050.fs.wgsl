struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat27 : f32;

@group(0) @binding(0) var<uniform> x_50 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati27 : i32;

var<private> u_xlatb10 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat19 : vec2<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat24 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlatb26 : bool;

var<private> u_xlatb29 : bool;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(10) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati20 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_318 : f32;
  var x_580 : f32;
  var x_592 : f32;
  var x_604 : f32;
  var x_661 : f32;
  var x_674 : f32;
  var x_686 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat9 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat9;
  let x_41 : vec2<f32> = u_xlat9;
  u_xlat27 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat27;
  let x_45 : vec2<f32> = u_xlat9;
  u_xlat9 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat9;
  let x_55 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_57 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_58 : vec2<f32> = vec2<f32>(x_55, x_57);
  u_xlat9 = (x_47 * vec2<f32>(x_58.x, x_58.y));
  let x_64 : vec2<f32> = u_xlat9;
  let x_69 : vec4<f32> = x_50.x_MainTex_TexelSize;
  let x_71 : vec2<f32> = (-(x_64) * vec2<f32>(x_69.z, x_69.w));
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_74 : vec4<f32> = u_xlat1;
  let x_78 : vec2<f32> = (vec2<f32>(x_74.x, x_74.y) * vec2<f32>(0.5f, 0.5f));
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_78.x, x_78.y, x_79.z, x_79.w);
  let x_81 : vec4<f32> = u_xlat1;
  let x_83 : vec4<f32> = u_xlat1;
  u_xlat27 = dot(vec2<f32>(x_81.x, x_81.y), vec2<f32>(x_83.x, x_83.y));
  let x_86 : f32 = u_xlat27;
  u_xlat27 = sqrt(x_86);
  let x_90 : f32 = u_xlat27;
  u_xlati27 = i32(x_90);
  let x_92 : i32 = u_xlati27;
  u_xlati27 = max(x_92, 3i);
  let x_95 : i32 = u_xlati27;
  u_xlati27 = min(x_95, 16i);
  let x_98 : i32 = u_xlati27;
  u_xlat1.x = f32(x_98);
  let x_101 : vec2<f32> = u_xlat9;
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat9 = (-(x_101) / vec2<f32>(x_103.x, x_103.x));
  let x_113 : f32 = x_50.x_Distortion_Amount.w;
  u_xlatb10 = (0.0f < x_113);
  u_xlat2.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  u_xlat19 = x_135;
  u_xlati_loop_1 = 0i;
  loop {
    let x_144 : i32 = u_xlati_loop_1;
    let x_145 : i32 = u_xlati27;
    if ((x_144 < x_145)) {
    } else {
      break;
    }
    let x_148 : i32 = u_xlati_loop_1;
    u_xlat29 = f32(x_148);
    let x_150 : f32 = u_xlat29;
    u_xlat29 = (x_150 + 0.5f);
    let x_152 : f32 = u_xlat29;
    let x_154 : f32 = u_xlat1.x;
    u_xlat2.x = (x_152 / x_154);
    let x_158 : vec2<f32> = u_xlat19;
    let x_161 : vec2<f32> = (x_158 + vec2<f32>(-0.5f, -0.5f));
    let x_162 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_161.x, x_161.y, x_162.z, x_162.w);
    let x_165 : vec4<f32> = u_xlat6;
    let x_168 : vec4<f32> = x_50.x_Distortion_Amount;
    u_xlat24 = ((vec2<f32>(x_165.x, x_165.y) * vec2<f32>(x_168.z, x_168.z)) + vec2<f32>(0.5f, 0.5f));
    let x_172 : vec4<f32> = u_xlat6;
    let x_175 : vec4<f32> = x_50.x_Distortion_Amount;
    let x_180 : vec4<f32> = x_50.x_Distortion_CenterScale;
    let x_183 : vec2<f32> = ((vec2<f32>(x_172.x, x_172.y) * vec2<f32>(x_175.z, x_175.z)) + -(vec2<f32>(x_180.x, x_180.y)));
    let x_184 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_183.x, x_183.y, x_184.z, x_184.w);
    let x_186 : vec4<f32> = u_xlat6;
    let x_189 : vec4<f32> = x_50.x_Distortion_CenterScale;
    let x_191 : vec2<f32> = (vec2<f32>(x_186.x, x_186.y) * vec2<f32>(x_189.z, x_189.w));
    let x_192 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_191.x, x_191.y, x_192.z, x_192.w);
    let x_194 : vec4<f32> = u_xlat6;
    let x_196 : vec4<f32> = u_xlat6;
    u_xlat29 = dot(vec2<f32>(x_194.x, x_194.y), vec2<f32>(x_196.x, x_196.y));
    let x_199 : f32 = u_xlat29;
    u_xlat29 = sqrt(x_199);
    let x_201 : bool = u_xlatb10;
    if (x_201) {
      let x_205 : f32 = u_xlat29;
      let x_208 : vec4<f32> = x_50.x_Distortion_Amount;
      u_xlat7 = (vec2<f32>(x_205, x_205) * vec2<f32>(x_208.x, x_208.y));
      let x_213 : f32 = u_xlat7.x;
      u_xlat8 = cos(x_213);
      let x_216 : f32 = u_xlat7.x;
      u_xlat7.x = sin(x_216);
      let x_220 : f32 = u_xlat7.x;
      let x_221 : f32 = u_xlat8;
      u_xlat7.x = (x_220 / x_221);
      let x_226 : f32 = u_xlat7.y;
      u_xlat16 = (1.0f / x_226);
      let x_229 : f32 = u_xlat7.x;
      let x_230 : f32 = u_xlat16;
      u_xlat7.x = ((x_229 * x_230) + -1.0f);
      let x_234 : vec4<f32> = u_xlat6;
      let x_236 : vec2<f32> = u_xlat7;
      let x_239 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_234.x, x_234.y) * vec2<f32>(x_236.x, x_236.x)) + x_239);
    } else {
      let x_243 : f32 = u_xlat29;
      u_xlat25 = (1.0f / x_243);
      let x_245 : f32 = u_xlat25;
      let x_247 : f32 = x_50.x_Distortion_Amount.x;
      u_xlat25 = (x_245 * x_247);
      let x_249 : f32 = u_xlat29;
      let x_251 : f32 = x_50.x_Distortion_Amount.y;
      u_xlat29 = (x_249 * x_251);
      let x_254 : f32 = u_xlat29;
      u_xlat34 = min(abs(x_254), 1.0f);
      let x_257 : f32 = u_xlat29;
      u_xlat8 = max(abs(x_257), 1.0f);
      let x_260 : f32 = u_xlat8;
      u_xlat8 = (1.0f / x_260);
      let x_262 : f32 = u_xlat34;
      let x_263 : f32 = u_xlat8;
      u_xlat34 = (x_262 * x_263);
      let x_265 : f32 = u_xlat34;
      let x_266 : f32 = u_xlat34;
      u_xlat8 = (x_265 * x_266);
      let x_269 : f32 = u_xlat8;
      u_xlat17 = ((x_269 * 0.0208351f) + -0.085133001f);
      let x_274 : f32 = u_xlat8;
      let x_275 : f32 = u_xlat17;
      u_xlat17 = ((x_274 * x_275) + 0.180141002f);
      let x_279 : f32 = u_xlat8;
      let x_280 : f32 = u_xlat17;
      u_xlat17 = ((x_279 * x_280) + -0.330299497f);
      let x_284 : f32 = u_xlat8;
      let x_285 : f32 = u_xlat17;
      u_xlat8 = ((x_284 * x_285) + 0.999866009f);
      let x_289 : f32 = u_xlat34;
      let x_290 : f32 = u_xlat8;
      u_xlat17 = (x_289 * x_290);
      let x_293 : f32 = u_xlat29;
      u_xlatb26 = (1.0f < abs(x_293));
      let x_296 : f32 = u_xlat17;
      u_xlat17 = ((x_296 * -2.0f) + 1.570796371f);
      let x_301 : bool = u_xlatb26;
      let x_302 : f32 = u_xlat17;
      u_xlat17 = select(0.0f, x_302, x_301);
      let x_304 : f32 = u_xlat34;
      let x_305 : f32 = u_xlat8;
      let x_307 : f32 = u_xlat17;
      u_xlat34 = ((x_304 * x_305) + x_307);
      let x_309 : f32 = u_xlat29;
      u_xlat29 = min(x_309, 1.0f);
      let x_312 : f32 = u_xlat29;
      let x_313 : f32 = u_xlat29;
      u_xlatb29 = (x_312 < -(x_313));
      let x_316 : bool = u_xlatb29;
      if (x_316) {
        let x_321 : f32 = u_xlat34;
        x_318 = -(x_321);
      } else {
        let x_324 : f32 = u_xlat34;
        x_318 = x_324;
      }
      let x_325 : f32 = x_318;
      u_xlat29 = x_325;
      let x_326 : f32 = u_xlat25;
      let x_327 : f32 = u_xlat29;
      u_xlat29 = ((x_326 * x_327) + -1.0f);
      let x_330 : vec4<f32> = u_xlat6;
      let x_332 : f32 = u_xlat29;
      let x_335 : vec2<f32> = u_xlat24;
      u_xlat7 = ((vec2<f32>(x_330.x, x_330.y) * vec2<f32>(x_332, x_332)) + x_335);
    }
    let x_337 : vec2<f32> = u_xlat7;
    u_xlat7 = x_337;
    let x_338 : vec2<f32> = u_xlat7;
    u_xlat7 = clamp(x_338, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_342 : vec2<f32> = u_xlat7;
    let x_344 : f32 = x_50.x_RenderViewportScaleFactor;
    let x_346 : vec2<f32> = (x_342 * vec2<f32>(x_344, x_344));
    let x_347 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
    let x_354 : vec4<f32> = u_xlat6;
    let x_356 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_354.x, x_354.y), 0.0f);
    u_xlat6 = x_356;
    let x_362 : vec3<f32> = u_xlat2;
    let x_364 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_362.x, x_362.y), 0.0f);
    let x_365 : vec3<f32> = vec3<f32>(x_364.x, x_364.y, x_364.z);
    let x_366 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
    let x_368 : vec4<f32> = u_xlat6;
    let x_369 : vec4<f32> = u_xlat3;
    let x_371 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_368 * x_369) + x_371);
    let x_373 : vec4<f32> = u_xlat3;
    let x_374 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_373 + x_374);
    let x_376 : vec2<f32> = u_xlat9;
    let x_377 : vec2<f32> = u_xlat19;
    u_xlat19 = (x_376 + x_377);

    continuing {
      let x_379 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_379 + 1i);
    }
  }
  let x_381 : vec4<f32> = u_xlat4;
  let x_382 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_381 / x_382);
  let x_384 : vec4<f32> = u_xlat0;
  let x_386 : vec4<f32> = u_xlat1;
  let x_388 : vec3<f32> = (vec3<f32>(x_384.x, x_384.x, x_384.x) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat1;
  let x_394 : f32 = x_50.x_PostExposure;
  let x_396 : f32 = x_50.x_PostExposure;
  let x_398 : f32 = x_50.x_PostExposure;
  let x_400 : f32 = x_50.x_PostExposure;
  let x_401 : vec4<f32> = vec4<f32>(x_394, x_396, x_398, x_400);
  u_xlat0 = (x_391 * vec4<f32>(x_401.x, x_401.y, x_401.z, x_401.w));
  let x_408 : vec4<f32> = u_xlat0;
  let x_415 : vec3<f32> = ((vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_416 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat0;
  let x_420 : vec3<f32> = log2(vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : vec4<f32> = u_xlat0;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : vec4<f32> = u_xlat0;
  let x_437 : vec3<f32> = clamp(vec3<f32>(x_433.x, x_433.y, x_433.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_440 : vec4<f32> = u_xlat0;
  let x_445 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_447 : vec3<f32> = (vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(x_445.y, x_445.y, x_445.y));
  let x_448 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_451 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat1.x = (x_451 * 0.5f);
  let x_454 : vec4<f32> = u_xlat0;
  let x_457 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_460 : vec4<f32> = u_xlat1;
  let x_462 : vec3<f32> = ((vec3<f32>(x_454.x, x_454.y, x_454.z) * vec3<f32>(x_457.x, x_457.x, x_457.x)) + vec3<f32>(x_460.x, x_460.x, x_460.x));
  let x_463 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_473 : vec4<f32> = u_xlat0;
  let x_475 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec3<f32> = vec3<f32>(x_475.x, x_475.y, x_475.z);
  let x_477 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec2<f32> = vs_TEXCOORD0;
  let x_481 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_485 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_487 : vec2<f32> = ((x_479 * vec2<f32>(x_481.x, x_481.y)) + vec2<f32>(x_485.z, x_485.w));
  let x_488 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
  let x_495 : vec4<f32> = u_xlat1;
  let x_497 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_495.x, x_495.y));
  u_xlat1.x = x_497.w;
  let x_501 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_501 * 2.0f) + -1.0f);
  let x_507 : f32 = u_xlat1.x;
  u_xlat10.x = ((x_507 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_513 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_513, 0.0f, 1.0f);
  let x_517 : f32 = u_xlat10.x;
  u_xlat10.x = ((x_517 * 2.0f) + -1.0f);
  let x_522 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_522)) + 1.0f);
  let x_528 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_528);
  let x_532 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_532) + 1.0f);
  let x_537 : f32 = u_xlat1.x;
  let x_539 : f32 = u_xlat10.x;
  u_xlat1.x = (x_537 * x_539);
  let x_542 : vec4<f32> = u_xlat0;
  u_xlat10 = (vec3<f32>(x_542.x, x_542.y, x_542.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_547 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_547.x, x_547.y, x_547.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_553 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_553);
  let x_555 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_555 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_559 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_559);
  let x_561 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_561 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_573 : vec4<f32> = u_xlat0;
  let x_576 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_573.x, x_573.y, x_573.z, x_573.x));
  u_xlatb0 = vec3<bool>(x_576.x, x_576.y, x_576.z);
  let x_579 : bool = u_xlatb0.x;
  if (x_579) {
    let x_584 : f32 = u_xlat10.x;
    x_580 = x_584;
  } else {
    let x_587 : f32 = u_xlat2.x;
    x_580 = x_587;
  }
  let x_588 : f32 = x_580;
  u_xlat0.x = x_588;
  let x_591 : bool = u_xlatb0.y;
  if (x_591) {
    let x_596 : f32 = u_xlat10.y;
    x_592 = x_596;
  } else {
    let x_599 : f32 = u_xlat2.y;
    x_592 = x_599;
  }
  let x_600 : f32 = x_592;
  u_xlat0.y = x_600;
  let x_603 : bool = u_xlatb0.z;
  if (x_603) {
    let x_608 : f32 = u_xlat10.z;
    x_604 = x_608;
  } else {
    let x_611 : f32 = u_xlat2.z;
    x_604 = x_611;
  }
  let x_612 : f32 = x_604;
  u_xlat0.z = x_612;
  let x_614 : vec4<f32> = u_xlat1;
  let x_619 : vec4<f32> = u_xlat0;
  let x_621 : vec3<f32> = ((vec3<f32>(x_614.x, x_614.x, x_614.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat0;
  let x_628 : vec3<f32> = (vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_629 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_631.x, x_631.y, x_631.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_636 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_636 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_640 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_640), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_643 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_643);
  let x_645 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_645 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_649 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_649);
  let x_653 : vec4<f32> = u_xlat0;
  let x_655 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_653.x, x_653.y, x_653.z, x_653.x));
  u_xlatb0 = vec3<bool>(x_655.x, x_655.y, x_655.z);
  let x_660 : bool = u_xlatb0.x;
  if (x_660) {
    let x_665 : f32 = u_xlat1.x;
    x_661 = x_665;
  } else {
    let x_668 : f32 = u_xlat2.x;
    x_661 = x_668;
  }
  let x_669 : f32 = x_661;
  SV_Target0.x = x_669;
  let x_673 : bool = u_xlatb0.y;
  if (x_673) {
    let x_678 : f32 = u_xlat1.y;
    x_674 = x_678;
  } else {
    let x_681 : f32 = u_xlat2.y;
    x_674 = x_681;
  }
  let x_682 : f32 = x_674;
  SV_Target0.y = x_682;
  let x_685 : bool = u_xlatb0.z;
  if (x_685) {
    let x_690 : f32 = u_xlat1.z;
    x_686 = x_690;
  } else {
    let x_693 : f32 = u_xlat2.z;
    x_686 = x_693;
  }
  let x_694 : f32 = x_686;
  SV_Target0.z = x_694;
  let x_697 : f32 = u_xlat0.w;
  SV_Target0.w = x_697;
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

