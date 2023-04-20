diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_ScreenSize : vec4<f32>,
  /* @offset(48) */
  x_LensFlareScreenSpaceStreakTex_TexelSize : vec4<f32>,
  /* @offset(64) */
  x_LensFlareScreenSpaceParams4 : vec4<f32>,
  /* @offset(80) */
  x_LensFlareScreenSpaceParams5 : vec4<f32>,
  /* @offset(96) */
  x_LensFlareScreenSpaceMipLevel : i32,
}

var<private> u_xlat0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_15 : PGlobals;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlatb4 : bool;

var<private> u_xlatb0 : bool;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var x_LensFlareScreenSpaceStreakTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_88 : f32;
  var x_112 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_15.x_LensFlareScreenSpaceParams4.z;
  u_xlat0.x = floor(x_21);
  let x_29 : f32 = u_xlat0.x;
  let x_31 : f32 = u_xlat0.x;
  u_xlat4.x = (x_29 + x_31);
  let x_38 : f32 = u_xlat4.x;
  let x_40 : f32 = u_xlat4.x;
  u_xlatb4 = (x_38 >= -(x_40));
  let x_43 : bool = u_xlatb4;
  u_xlat4 = select(vec2<f32>(-2.0f, -0.5f), vec2<f32>(2.0f, 0.5f), vec2<bool>(x_43, x_43));
  let x_55 : f32 = u_xlat4.y;
  let x_57 : f32 = u_xlat0.x;
  u_xlat0.x = (x_55 * x_57);
  let x_61 : f32 = u_xlat0.x;
  u_xlat0.x = fract(x_61);
  let x_65 : f32 = u_xlat0.x;
  let x_67 : f32 = u_xlat4.x;
  u_xlat0.x = (x_65 * x_67);
  let x_72 : f32 = u_xlat0.x;
  u_xlatb0 = (x_72 == 0.0f);
  let x_76 : f32 = x_15.x_LensFlareScreenSpaceParams4.z;
  u_xlat4.x = fract(x_76);
  let x_81 : f32 = u_xlat4.x;
  u_xlat8.x = (-(x_81) + 1.0f);
  let x_86 : bool = u_xlatb0;
  if (x_86) {
    let x_92 : f32 = u_xlat4.x;
    x_88 = x_92;
  } else {
    let x_95 : f32 = u_xlat8.x;
    x_88 = -(x_95);
  }
  let x_97 : f32 = x_88;
  u_xlat4.x = x_97;
  let x_100 : f32 = u_xlat4.x;
  let x_103 : f32 = x_15.x_LensFlareScreenSpaceStreakTex_TexelSize.y;
  u_xlat0.y = (x_100 * x_103);
  let x_108 : f32 = u_xlat8.x;
  u_xlat12 = (-(x_108) + 1.0f);
  let x_111 : bool = u_xlatb0;
  if (x_111) {
    let x_116 : f32 = u_xlat8.x;
    x_112 = -(x_116);
  } else {
    let x_119 : f32 = u_xlat12;
    x_112 = -(x_119);
  }
  let x_121 : f32 = x_112;
  u_xlat0.x = x_121;
  let x_124 : f32 = u_xlat0.x;
  let x_126 : f32 = x_15.x_LensFlareScreenSpaceStreakTex_TexelSize.x;
  u_xlat0.x = (x_124 * x_126);
  let x_129 : vec3<f32> = u_xlat0;
  let x_133 : vec4<f32> = x_15.x_LensFlareScreenSpaceParams4;
  let x_135 : vec2<f32> = (vec2<f32>(x_129.x, x_129.y) * vec2<f32>(x_133.y, x_133.y));
  let x_136 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_135.x, x_135.y, x_136.z);
  let x_141 : i32 = x_15.x_LensFlareScreenSpaceMipLevel;
  u_xlat8.x = f32(x_141);
  let x_145 : f32 = u_xlat8.x;
  u_xlat8.x = (x_145 + 1.0f);
  let x_148 : vec2<f32> = u_xlat8;
  let x_150 : vec3<f32> = u_xlat0;
  let x_152 : vec2<f32> = (vec2<f32>(x_148.x, x_148.x) * vec2<f32>(x_150.x, x_150.y));
  let x_153 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_152.x, x_152.y, x_153.z);
  let x_155 : vec3<f32> = u_xlat0;
  let x_159 : vec4<f32> = x_15.x_LensFlareScreenSpaceParams5;
  let x_161 : vec2<f32> = (vec2<f32>(x_155.x, x_155.y) / vec2<f32>(x_159.x, x_159.x));
  let x_162 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_161.x, x_161.y, x_162.z);
  let x_166 : vec3<f32> = u_xlat0;
  let x_175 : vec2<f32> = vs_TEXCOORD0;
  let x_177 : vec2<f32> = ((-(vec2<f32>(x_166.x, x_166.x)) * vec2<f32>(5.0f, 3.0f)) + vec2<f32>(x_175.x, x_175.x));
  let x_178 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_177.x, x_178.y, x_177.y, x_178.w);
  let x_180 : vec4<f32> = u_xlat1;
  let x_184 : vec2<f32> = clamp(vec2<f32>(x_180.x, x_180.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_184.x, x_185.y, x_184.y, x_185.w);
  let x_187 : vec3<f32> = u_xlat0;
  let x_191 : vec2<f32> = vs_TEXCOORD0;
  let x_193 : vec2<f32> = ((-(vec2<f32>(x_187.y, x_187.y)) * vec2<f32>(5.0f, 3.0f)) + vec2<f32>(x_191.y, x_191.y));
  let x_194 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_194.x, x_193.x, x_194.z, x_193.y);
  let x_196 : vec4<f32> = u_xlat1;
  let x_200 : vec2<f32> = clamp(vec2<f32>(x_196.y, x_196.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_201 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_201.x, x_200.x, x_201.z, x_200.y);
  let x_205 : vec4<f32> = x_15.x_ScreenSize;
  let x_212 : vec4<f32> = x_15.x_RTHandleScale;
  u_xlat8 = ((-(vec2<f32>(x_205.z, x_205.w)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_212.x, x_212.y));
  let x_215 : vec2<f32> = u_xlat8;
  let x_217 : vec4<f32> = u_xlat1;
  u_xlat1 = min(vec4<f32>(x_215.x, x_215.y, x_215.x, x_215.y), x_217);
  let x_230 : vec4<f32> = u_xlat1;
  let x_234 : f32 = x_15.x_GlobalMipBias.x;
  let x_235 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_230.z, x_230.w), x_234);
  u_xlat2 = vec3<f32>(x_235.x, x_235.y, x_235.z);
  let x_240 : vec4<f32> = u_xlat1;
  let x_243 : f32 = x_15.x_GlobalMipBias.x;
  let x_244 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_240.x, x_240.y), x_243);
  let x_245 : vec3<f32> = vec3<f32>(x_244.x, x_244.y, x_244.z);
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  let x_248 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_248 * vec3<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f));
  let x_252 : vec4<f32> = u_xlat1;
  let x_257 : vec3<f32> = u_xlat2;
  let x_258 : vec3<f32> = ((vec3<f32>(x_252.x, x_252.y, x_252.z) * vec3<f32>(0.08333333581686019897f, 0.08333333581686019897f, 0.08333333581686019897f)) + x_257);
  let x_259 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec3<f32> = u_xlat0;
  let x_264 : vec2<f32> = vs_TEXCOORD0;
  let x_265 : vec2<f32> = (-(vec2<f32>(x_261.x, x_261.y)) + x_264);
  let x_266 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_265.x, x_265.y, x_266.z);
  let x_268 : vec3<f32> = u_xlat2;
  let x_272 : vec2<f32> = clamp(vec2<f32>(x_268.x, x_268.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_273 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_272.x, x_272.y, x_273.z);
  let x_275 : vec2<f32> = u_xlat8;
  let x_276 : vec3<f32> = u_xlat2;
  let x_278 : vec2<f32> = min(x_275, vec2<f32>(x_276.x, x_276.y));
  let x_279 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_278.x, x_278.y, x_279.z);
  let x_284 : vec3<f32> = u_xlat2;
  let x_287 : f32 = x_15.x_GlobalMipBias.x;
  let x_288 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_284.x, x_284.y), x_287);
  u_xlat2 = vec3<f32>(x_288.x, x_288.y, x_288.z);
  let x_290 : vec3<f32> = u_xlat2;
  let x_294 : vec4<f32> = u_xlat1;
  let x_296 : vec3<f32> = ((x_290 * vec3<f32>(0.25f, 0.25f, 0.25f)) + vec3<f32>(x_294.x, x_294.y, x_294.z));
  let x_297 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
  let x_300 : vec3<f32> = u_xlat0;
  let x_304 : vec2<f32> = vs_TEXCOORD0;
  let x_306 : vec2<f32> = ((vec2<f32>(x_300.x, x_300.x) * vec2<f32>(3.0f, 5.0f)) + vec2<f32>(x_304.x, x_304.x));
  let x_307 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_306.x, x_307.y, x_306.y, x_307.w);
  let x_309 : vec4<f32> = u_xlat3;
  let x_313 : vec2<f32> = clamp(vec2<f32>(x_309.x, x_309.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_314.y, x_313.y, x_314.w);
  let x_316 : vec3<f32> = u_xlat0;
  let x_318 : vec2<f32> = vs_TEXCOORD0;
  let x_319 : vec2<f32> = (vec2<f32>(x_316.x, x_316.y) + x_318);
  let x_320 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_319.x, x_319.y, x_320.z);
  let x_322 : vec3<f32> = u_xlat2;
  let x_326 : vec2<f32> = clamp(vec2<f32>(x_322.x, x_322.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_327 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_326.x, x_326.y, x_327.z);
  let x_329 : vec3<f32> = u_xlat0;
  let x_332 : vec2<f32> = vs_TEXCOORD0;
  let x_334 : vec2<f32> = ((vec2<f32>(x_329.y, x_329.y) * vec2<f32>(3.0f, 5.0f)) + vec2<f32>(x_332.y, x_332.y));
  let x_335 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_335.x, x_334.x, x_335.z, x_334.y);
  let x_337 : vec4<f32> = u_xlat3;
  let x_341 : vec2<f32> = clamp(vec2<f32>(x_337.y, x_337.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_342.x, x_341.x, x_342.z, x_341.y);
  let x_344 : vec2<f32> = u_xlat8;
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = min(vec4<f32>(x_344.x, x_344.y, x_344.x, x_344.y), x_346);
  let x_348 : vec2<f32> = u_xlat8;
  let x_349 : vec3<f32> = u_xlat2;
  let x_351 : vec2<f32> = min(x_348, vec2<f32>(x_349.x, x_349.y));
  let x_352 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_351.x, x_351.y, x_352.z);
  let x_357 : vec3<f32> = u_xlat0;
  let x_360 : f32 = x_15.x_GlobalMipBias.x;
  let x_361 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_357.x, x_357.y), x_360);
  u_xlat0 = vec3<f32>(x_361.x, x_361.y, x_361.z);
  let x_363 : vec3<f32> = u_xlat0;
  let x_365 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_363 * vec3<f32>(0.25f, 0.25f, 0.25f)) + vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_371 : vec4<f32> = u_xlat3;
  let x_374 : f32 = x_15.x_GlobalMipBias.x;
  let x_375 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_371.x, x_371.y), x_374);
  let x_376 : vec3<f32> = vec3<f32>(x_375.x, x_375.y, x_375.z);
  let x_377 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_382 : vec4<f32> = u_xlat3;
  let x_385 : f32 = x_15.x_GlobalMipBias.x;
  let x_386 : vec4<f32> = textureSampleBias(x_LensFlareScreenSpaceStreakTex, sampler_LinearClamp, vec2<f32>(x_382.z, x_382.w), x_385);
  u_xlat2 = vec3<f32>(x_386.x, x_386.y, x_386.z);
  let x_388 : vec4<f32> = u_xlat1;
  let x_391 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_388.x, x_388.y, x_388.z) * vec3<f32>(0.16666667163372039795f, 0.16666667163372039795f, 0.16666667163372039795f)) + x_391);
  let x_395 : vec3<f32> = u_xlat2;
  let x_397 : vec3<f32> = u_xlat0;
  let x_398 : vec3<f32> = ((x_395 * vec3<f32>(0.08333333581686019897f, 0.08333333581686019897f, 0.08333333581686019897f)) + x_397);
  let x_399 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
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


