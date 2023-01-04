struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(0) var<uniform> x_51 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlati21 : i32;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb16 : bool;

var<private> u_xlati22 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var x_295 : f32;
  var x_307 : f32;
  var x_319 : f32;
  var x_371 : f32;
  var x_384 : f32;
  var x_396 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_25.x;
  let x_33 : vec2<f32> = vs_TEXCOORD0;
  u_xlat7 = ((x_33 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_41 : vec2<f32> = u_xlat7;
  let x_42 : vec2<f32> = u_xlat7;
  u_xlat21 = dot(x_41, x_42);
  let x_44 : f32 = u_xlat21;
  let x_46 : vec2<f32> = u_xlat7;
  u_xlat7 = (vec2<f32>(x_44, x_44) * x_46);
  let x_48 : vec2<f32> = u_xlat7;
  let x_56 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_58 : f32 = x_51.x_ChromaticAberration_Amount;
  let x_59 : vec2<f32> = vec2<f32>(x_56, x_58);
  u_xlat7 = (x_48 * vec2<f32>(x_59.x, x_59.y));
  let x_66 : vec2<f32> = u_xlat7;
  let x_71 : vec4<f32> = x_51.x_MainTex_TexelSize;
  let x_73 : vec2<f32> = (-(x_66) * vec2<f32>(x_71.z, x_71.w));
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_73.x, x_73.y, x_74.z, x_74.w);
  let x_76 : vec4<f32> = u_xlat1;
  let x_80 : vec2<f32> = (vec2<f32>(x_76.x, x_76.y) * vec2<f32>(0.5f, 0.5f));
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_80.x, x_80.y, x_81.z, x_81.w);
  let x_83 : vec4<f32> = u_xlat1;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat21 = dot(vec2<f32>(x_83.x, x_83.y), vec2<f32>(x_85.x, x_85.y));
  let x_88 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_88);
  let x_92 : f32 = u_xlat21;
  u_xlati21 = i32(x_92);
  let x_94 : i32 = u_xlati21;
  u_xlati21 = max(x_94, 3i);
  let x_96 : i32 = u_xlati21;
  u_xlati21 = min(x_96, 16i);
  let x_99 : i32 = u_xlati21;
  u_xlat1.x = f32(x_99);
  let x_102 : vec2<f32> = u_xlat7;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat7 = (-(x_102) / vec2<f32>(x_104.x, x_104.x));
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
  u_xlat8 = x_127;
  u_xlati_loop_1 = 0i;
  loop {
    let x_136 : i32 = u_xlati_loop_1;
    let x_137 : i32 = u_xlati21;
    if ((x_136 < x_137)) {
    } else {
      break;
    }
    let x_141 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_141);
    let x_145 : f32 = u_xlat16.x;
    u_xlat16.x = (x_145 + 0.5f);
    let x_149 : f32 = u_xlat16.x;
    let x_151 : f32 = u_xlat1.x;
    u_xlat2.x = (x_149 / x_151);
    let x_154 : vec2<f32> = u_xlat8;
    u_xlat16 = x_154;
    let x_155 : vec2<f32> = u_xlat16;
    u_xlat16 = clamp(x_155, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_159 : vec2<f32> = u_xlat16;
    let x_161 : f32 = x_51.x_RenderViewportScaleFactor;
    u_xlat16 = (x_159 * vec2<f32>(x_161, x_161));
    let x_170 : vec2<f32> = u_xlat16;
    let x_171 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_170, 0.0f);
    u_xlat6 = x_171;
    let x_177 : vec3<f32> = u_xlat2;
    let x_179 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_177.x, x_177.y), 0.0f);
    let x_180 : vec3<f32> = vec3<f32>(x_179.x, x_179.y, x_179.z);
    let x_181 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
    let x_183 : vec4<f32> = u_xlat6;
    let x_184 : vec4<f32> = u_xlat3;
    let x_186 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_183 * x_184) + x_186);
    let x_188 : vec4<f32> = u_xlat3;
    let x_189 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_188 + x_189);
    let x_191 : vec2<f32> = u_xlat7;
    let x_192 : vec2<f32> = u_xlat8;
    u_xlat8 = (x_191 + x_192);

    continuing {
      let x_194 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_194 + 1i);
    }
  }
  let x_197 : vec4<f32> = u_xlat4;
  let x_198 : vec4<f32> = u_xlat5;
  u_xlat1 = (x_197 / x_198);
  let x_200 : vec3<f32> = u_xlat0;
  let x_202 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec3<f32>(x_200.x, x_200.x, x_200.x) * vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec2<f32> = vs_TEXCOORD0;
  let x_207 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_211 : vec4<f32> = x_51.x_Dithering_Coords;
  let x_213 : vec2<f32> = ((x_205 * vec2<f32>(x_207.x, x_207.y)) + vec2<f32>(x_211.z, x_211.w));
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_213.x, x_213.y, x_214.z, x_214.w);
  let x_221 : vec4<f32> = u_xlat1;
  let x_223 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_221.x, x_221.y));
  u_xlat21 = x_223.w;
  let x_225 : f32 = u_xlat21;
  u_xlat21 = ((x_225 * 2.0f) + -1.0f);
  let x_228 : f32 = u_xlat21;
  u_xlat1.x = ((x_228 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_234 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_234, 0.0f, 1.0f);
  let x_238 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_238 * 2.0f) + -1.0f);
  let x_242 : f32 = u_xlat21;
  u_xlat21 = (-(abs(x_242)) + 1.0f);
  let x_246 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_246);
  let x_248 : f32 = u_xlat21;
  u_xlat21 = (-(x_248) + 1.0f);
  let x_251 : f32 = u_xlat21;
  let x_253 : f32 = u_xlat1.x;
  u_xlat21 = (x_251 * x_253);
  let x_255 : vec3<f32> = u_xlat0;
  let x_258 : vec3<f32> = (x_255 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_259 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec3<f32> = u_xlat0;
  u_xlat2 = max(abs(x_261), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_266 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_266);
  let x_268 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_268 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_272 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_272);
  let x_274 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_274 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_286 : vec3<f32> = u_xlat0;
  let x_289 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_286.x, x_286.y, x_286.z, x_286.x));
  u_xlatb0 = vec3<bool>(x_289.x, x_289.y, x_289.z);
  let x_293 : bool = u_xlatb0.x;
  if (x_293) {
    let x_299 : f32 = u_xlat1.x;
    x_295 = x_299;
  } else {
    let x_302 : f32 = u_xlat2.x;
    x_295 = x_302;
  }
  let x_303 : f32 = x_295;
  u_xlat0.x = x_303;
  let x_306 : bool = u_xlatb0.y;
  if (x_306) {
    let x_311 : f32 = u_xlat1.y;
    x_307 = x_311;
  } else {
    let x_314 : f32 = u_xlat2.y;
    x_307 = x_314;
  }
  let x_315 : f32 = x_307;
  u_xlat0.y = x_315;
  let x_318 : bool = u_xlatb0.z;
  if (x_318) {
    let x_323 : f32 = u_xlat1.z;
    x_319 = x_323;
  } else {
    let x_326 : f32 = u_xlat2.z;
    x_319 = x_326;
  }
  let x_327 : f32 = x_319;
  u_xlat0.z = x_327;
  let x_329 : f32 = u_xlat21;
  let x_334 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_329, x_329, x_329) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_334);
  let x_336 : vec3<f32> = u_xlat0;
  let x_339 : vec3<f32> = (x_336 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_342 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_342 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_346 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_346 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_350 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_350), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_353 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_353);
  let x_355 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_355 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_359 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_359);
  let x_363 : vec3<f32> = u_xlat0;
  let x_365 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_363.x, x_363.y, x_363.z, x_363.x));
  u_xlatb0 = vec3<bool>(x_365.x, x_365.y, x_365.z);
  let x_370 : bool = u_xlatb0.x;
  if (x_370) {
    let x_375 : f32 = u_xlat1.x;
    x_371 = x_375;
  } else {
    let x_378 : f32 = u_xlat2.x;
    x_371 = x_378;
  }
  let x_379 : f32 = x_371;
  SV_Target0.x = x_379;
  let x_383 : bool = u_xlatb0.y;
  if (x_383) {
    let x_388 : f32 = u_xlat1.y;
    x_384 = x_388;
  } else {
    let x_391 : f32 = u_xlat2.y;
    x_384 = x_391;
  }
  let x_392 : f32 = x_384;
  SV_Target0.y = x_392;
  let x_395 : bool = u_xlatb0.z;
  if (x_395) {
    let x_400 : f32 = u_xlat1.z;
    x_396 = x_400;
  } else {
    let x_403 : f32 = u_xlat2.z;
    x_396 = x_403;
  }
  let x_404 : f32 = x_396;
  SV_Target0.z = x_404;
  let x_407 : f32 = u_xlat1.w;
  SV_Target0.w = x_407;
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

