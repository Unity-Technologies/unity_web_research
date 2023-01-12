struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : PGlobals;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(10) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlati21 : i32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_472 : f32;
  var x_484 : f32;
  var x_496 : f32;
  var x_553 : f32;
  var x_566 : f32;
  var x_578 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_32 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_32 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_40 : vec2<f32> = u_xlat7;
  let x_41 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_40, x_41);
  let x_43 : f32 = u_xlat21;
  let x_45 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_43, x_43) * x_45);
  let x_47 : vec2<f32> = u_xlat7;
  let x_55 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_57 : f32 = x_50.x_ChromaticAberration_Amount;
  let x_58 : vec2<f32> = vec2<f32>(x_55, x_57);
  u_xlat7 = (x_47 * vec2<f32>(x_58.x, x_58.y));
  let x_64 : vec2<f32> = u_xlat7;
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
  u_xlat21 = dot(vec2<f32>(x_81.x, x_81.y), vec2<f32>(x_83.x, x_83.y));
  let x_86 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_86);
  let x_90 : f32 = u_xlat21;
  u_xlati21 = i32(x_90);
  let x_92 : i32 = u_xlati21;
  u_xlati21 = max(x_92, 3i);
  let x_94 : i32 = u_xlati21;
  u_xlati21 = min(x_94, 16i);
  let x_97 : i32 = u_xlati21;
  u_xlat1.x = f32(x_97);
  let x_100 : vec2<f32> = u_xlat7;
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_100) / vec2<f32>(x_102.x, x_102.x));
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
  let x_127 : vec2<f32> = vs_TEXCOORD0;
  let x_128 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_127.x, x_127.y, x_128.z);
  u_xlati_loop_1 = 0i;
  loop {
    let x_137 : i32 = u_xlati_loop_1;
    let x_138 : i32 = u_xlati21;
    if ((x_137 < x_138)) {
    } else {
      break;
    }
    let x_142 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_142);
    let x_146 : f32 = u_xlat16.x;
    u_xlat16.x = (x_146 + 0.5f);
    let x_150 : f32 = u_xlat16.x;
    let x_152 : f32 = u_xlat1.x;
    u_xlat2.x = (x_150 / x_152);
    let x_155 : vec3<f32> = u_xlat8;
    u_xlat16 = vec2<f32>(x_155.x, x_155.y);
    let x_157 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_157, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_161 : vec2<f32> = u_xlat16;
    let x_163 : f32 = x_50.x_RenderViewportScaleFactor;
    u_xlat16 = (x_161 * vec2<f32>(x_163, x_163));
    let x_172 : vec2<f32> = u_xlat16;
    let x_173 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_172, 0.0f);
    u_xlat6 = x_173;
    let x_179 : vec3<f32> = u_xlat2;
    let x_181 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_179.x, x_179.y), 0.0f);
    let x_182 : vec3<f32> = vec3<f32>(x_181.x, x_181.y, x_181.z);
    let x_183 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
    let x_185 : vec4<f32> = u_xlat6;
    let x_186 : vec4<f32> = u_xlat3;
    let x_188 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_185 * x_186) + x_188);
    let x_190 : vec4<f32> = u_xlat3;
    let x_191 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_190 + x_191);
    let x_193 : vec2<f32> = u_xlat7;
    let x_194 : vec3<f32> = u_xlat8;
    let x_196 : vec2<f32> = (x_193 + vec2<f32>(x_194.x, x_194.y));
    let x_197 : vec3<f32> = u_xlat8;
    u_xlat8 = vec3<f32>(x_196.x, x_196.y, x_197.z);

    continuing {
      let x_199 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_199 + 1i);
    }
  }
  let x_202 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_202 / x_203);
  let x_205 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = u_xlat1;
  let x_209 : vec3<f32> = (vec3<f32>(x_205.x, x_205.x, x_205.x) * vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_213 : vec2<f32> = vs_TEXCOORD1;
  let x_216 : vec4<f32> = x_50.x_Grain_Params2;
  let x_220 : vec4<f32> = x_50.x_Grain_Params2;
  let x_222 : vec2<f32> = ((x_213 * vec2<f32>(x_216.x, x_216.y)) + vec2<f32>(x_220.z, x_220.w));
  let x_223 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_222.x, x_222.y, x_223.z);
  let x_230 : vec3<f32> = u_xlat2;
  let x_232 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_230.x, x_230.y));
  u_xlat2 = vec3<f32>(x_232.x, x_232.y, x_232.z);
  let x_234 : vec4<f32> = u_xlat0;
  let x_235 : vec3<f32> = vec3<f32>(x_234.x, x_234.y, x_234.z);
  let x_236 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat3;
  let x_242 : vec3<f32> = clamp(vec3<f32>(x_238.x, x_238.y, x_238.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_243 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_252 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_252);
  let x_256 : f32 = x_50.x_Grain_Params1.x;
  let x_257 : f32 = u_xlat21;
  u_xlat21 = ((x_256 * -(x_257)) + 1.0f);
  let x_261 : vec4<f32> = u_xlat0;
  let x_263 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_261.x, x_261.y, x_261.z) * x_263);
  let x_265 : vec3<f32> = u_xlat2;
  let x_267 : f32 = x_50.x_Grain_Params1.y;
  let x_269 : f32 = x_50.x_Grain_Params1.y;
  let x_271 : f32 = x_50.x_Grain_Params1.y;
  u_xlat2 = (x_265 * vec3<f32>(x_267, x_269, x_271));
  let x_274 : vec3<f32> = u_xlat2;
  let x_275 : f32 = u_xlat21;
  let x_278 : vec4<f32> = u_xlat0;
  let x_280 : vec3<f32> = ((x_274 * vec3<f32>(x_275, x_275, x_275)) + vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat1;
  let x_286 : f32 = x_50.x_PostExposure;
  let x_288 : f32 = x_50.x_PostExposure;
  let x_290 : f32 = x_50.x_PostExposure;
  let x_292 : f32 = x_50.x_PostExposure;
  let x_293 : vec4<f32> = vec4<f32>(x_286, x_288, x_290, x_292);
  u_xlat0 = (x_283 * vec4<f32>(x_293.x, x_293.y, x_293.z, x_293.w));
  let x_300 : vec4<f32> = u_xlat0;
  let x_307 : vec3<f32> = ((vec3<f32>(x_300.x, x_300.y, x_300.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_308 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_310 : vec4<f32> = u_xlat0;
  let x_312 : vec3<f32> = log2(vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec4<f32> = u_xlat0;
  let x_322 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_323 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_325 : vec4<f32> = u_xlat0;
  let x_329 : vec3<f32> = clamp(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_330 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat0;
  let x_337 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_339 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) * vec3<f32>(x_337.y, x_337.y, x_337.y));
  let x_340 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : f32 = x_50.x_Lut3D_Params.x;
  u_xlat1.x = (x_343 * 0.5f);
  let x_346 : vec4<f32> = u_xlat0;
  let x_349 : vec2<f32> = x_50.x_Lut3D_Params;
  let x_352 : vec4<f32> = u_xlat1;
  let x_354 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_349.x, x_349.x, x_349.x)) + vec3<f32>(x_352.x, x_352.x, x_352.x));
  let x_355 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_365 : vec4<f32> = u_xlat0;
  let x_367 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_368 : vec3<f32> = vec3<f32>(x_367.x, x_367.y, x_367.z);
  let x_369 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec2<f32> = vs_TEXCOORD0;
  let x_373 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_377 : vec4<f32> = x_50.x_Dithering_Coords;
  let x_379 : vec2<f32> = ((x_371 * vec2<f32>(x_373.x, x_373.y)) + vec2<f32>(x_377.z, x_377.w));
  let x_380 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
  let x_387 : vec4<f32> = u_xlat1;
  let x_389 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_387.x, x_387.y));
  u_xlat1.x = x_389.w;
  let x_393 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_393 * 2.0f) + -1.0f);
  let x_398 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_398 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_404 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_404, 0.0f, 1.0f);
  let x_408 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_408 * 2.0f) + -1.0f);
  let x_413 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_413)) + 1.0f);
  let x_419 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_419);
  let x_423 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_423) + 1.0f);
  let x_428 : f32 = u_xlat1.x;
  let x_430 : f32 = u_xlat8.x;
  u_xlat1.x = (x_428 * x_430);
  let x_433 : vec4<f32> = u_xlat0;
  u_xlat8 = (vec3<f32>(x_433.x, x_433.y, x_433.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_438 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_438.x, x_438.y, x_438.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_444 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_444);
  let x_446 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_446 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_450 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_450);
  let x_452 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_452 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_464 : vec4<f32> = u_xlat0;
  let x_467 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_464.x, x_464.y, x_464.z, x_464.x));
  u_xlatb0 = vec3<bool>(x_467.x, x_467.y, x_467.z);
  let x_471 : bool = u_xlatb0.x;
  if (x_471) {
    let x_476 : f32 = u_xlat8.x;
    x_472 = x_476;
  } else {
    let x_479 : f32 = u_xlat2.x;
    x_472 = x_479;
  }
  let x_480 : f32 = x_472;
  u_xlat0.x = x_480;
  let x_483 : bool = u_xlatb0.y;
  if (x_483) {
    let x_488 : f32 = u_xlat8.y;
    x_484 = x_488;
  } else {
    let x_491 : f32 = u_xlat2.y;
    x_484 = x_491;
  }
  let x_492 : f32 = x_484;
  u_xlat0.y = x_492;
  let x_495 : bool = u_xlatb0.z;
  if (x_495) {
    let x_500 : f32 = u_xlat8.z;
    x_496 = x_500;
  } else {
    let x_503 : f32 = u_xlat2.z;
    x_496 = x_503;
  }
  let x_504 : f32 = x_496;
  u_xlat0.z = x_504;
  let x_506 : vec4<f32> = u_xlat1;
  let x_511 : vec4<f32> = u_xlat0;
  let x_513 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.x, x_506.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_511.x, x_511.y, x_511.z));
  let x_514 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat0;
  let x_520 : vec3<f32> = (vec3<f32>(x_516.x, x_516.y, x_516.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_521 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_523.x, x_523.y, x_523.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_528 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_528 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_532), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_535 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_535);
  let x_537 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_537 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_541 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_541);
  let x_545 : vec4<f32> = u_xlat0;
  let x_547 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_545.x, x_545.y, x_545.z, x_545.x));
  u_xlatb0 = vec3<bool>(x_547.x, x_547.y, x_547.z);
  let x_552 : bool = u_xlatb0.x;
  if (x_552) {
    let x_557 : f32 = u_xlat1.x;
    x_553 = x_557;
  } else {
    let x_560 : f32 = u_xlat2.x;
    x_553 = x_560;
  }
  let x_561 : f32 = x_553;
  SV_Target0.x = x_561;
  let x_565 : bool = u_xlatb0.y;
  if (x_565) {
    let x_570 : f32 = u_xlat1.y;
    x_566 = x_570;
  } else {
    let x_573 : f32 = u_xlat2.y;
    x_566 = x_573;
  }
  let x_574 : f32 = x_566;
  SV_Target0.y = x_574;
  let x_577 : bool = u_xlatb0.z;
  if (x_577) {
    let x_582 : f32 = u_xlat1.z;
    x_578 = x_582;
  } else {
    let x_585 : f32 = u_xlat2.z;
    x_578 = x_585;
  }
  let x_586 : f32 = x_578;
  SV_Target0.z = x_586;
  let x_589 : f32 = u_xlat0.w;
  SV_Target0.w = x_589;
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

