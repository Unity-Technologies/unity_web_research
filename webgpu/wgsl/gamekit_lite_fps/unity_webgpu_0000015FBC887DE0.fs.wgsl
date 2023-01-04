struct PGlobals {
  unity_WorldToCamera : mat4x4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(4) var sampler_CameraGBufferTexture2 : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlatb15 : bool;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_62 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat5 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, x_23);
  let x_26 : vec3<f32> = vec3<f32>(x_24.x, x_24.y, x_24.z);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_26.z, x_27.w);
  let x_31 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = u_xlat0;
  u_xlat15 = dot(vec3<f32>(x_31.x, x_31.y, x_31.z), vec3<f32>(x_33.x, x_33.y, x_33.z));
  let x_39 : f32 = u_xlat15;
  u_xlatb15 = !((x_39 == 0.0f));
  let x_42 : bool = u_xlatb15;
  u_xlat15 = select(-0.0f, -1.0f, x_42);
  let x_46 : vec4<f32> = u_xlat0;
  let x_51 : f32 = u_xlat15;
  let x_53 : vec3<f32> = ((vec3<f32>(x_46.x, x_46.y, x_46.z) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(x_51, x_51, x_51));
  let x_54 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_53.x, x_53.y, x_53.z, x_54.w);
  let x_57 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = x_62.unity_WorldToCamera[1i];
  let x_70 : vec3<f32> = (vec3<f32>(x_57.y, x_57.y, x_57.y) * vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_74 : vec4<f32> = x_62.unity_WorldToCamera[0i];
  let x_76 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = u_xlat1;
  let x_81 : vec3<f32> = ((vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_76.x, x_76.x, x_76.x)) + vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_81.x, x_81.y, x_82.z, x_81.z);
  let x_86 : vec4<f32> = x_62.unity_WorldToCamera[2i];
  let x_88 : vec4<f32> = u_xlat0;
  let x_91 : vec4<f32> = u_xlat0;
  let x_93 : vec3<f32> = ((vec3<f32>(x_86.x, x_86.y, x_86.z) * vec3<f32>(x_88.z, x_88.z, x_88.z)) + vec3<f32>(x_91.x, x_91.y, x_91.w));
  let x_94 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_100 : f32 = x_62.x_MainTex_TexelSize.x;
  u_xlat1.x = x_100;
  u_xlat1.y = 0.0f;
  let x_105 : vec4<f32> = u_xlat1;
  let x_115 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((-(vec4<f32>(x_105.x, x_105.y, x_105.x, x_105.y)) * vec4<f32>(2.769230843f, 1.384615421f, 6.461538315f, 3.230769157f)) + vec4<f32>(x_115.x, x_115.y, x_115.x, x_115.y));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_118, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_123 : vec4<f32> = u_xlat1;
  let x_126 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_123.x, x_123.y, x_123.x, x_123.y) * vec4<f32>(2.769230843f, 1.384615421f, 6.461538315f, 3.230769157f)) + vec4<f32>(x_126.x, x_126.y, x_126.x, x_126.y));
  let x_129 : vec4<f32> = u_xlat1;
  u_xlat1 = clamp(x_129, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_133 : vec4<f32> = u_xlat1;
  let x_135 : f32 = x_62.x_RenderViewportScaleFactor;
  u_xlat1 = (x_133 * vec4<f32>(x_135, x_135, x_135, x_135));
  let x_138 : vec4<f32> = u_xlat2;
  let x_140 : f32 = x_62.x_RenderViewportScaleFactor;
  u_xlat2 = (x_138 * vec4<f32>(x_140, x_140, x_140, x_140));
  let x_149 : vec4<f32> = u_xlat2;
  let x_151 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_149.x, x_149.y));
  u_xlat3 = x_151;
  let x_155 : vec4<f32> = u_xlat2;
  let x_157 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_155.z, x_155.w));
  u_xlat2 = x_157;
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat8 = ((vec3<f32>(x_160.y, x_160.z, x_160.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_165 : vec4<f32> = u_xlat0;
  let x_167 : vec3<f32> = u_xlat8;
  u_xlat15 = dot(vec3<f32>(x_165.x, x_165.y, x_165.z), x_167);
  let x_169 : f32 = u_xlat15;
  u_xlat15 = (x_169 + -0.800000012f);
  let x_172 : f32 = u_xlat15;
  u_xlat15 = (x_172 * 5.000000477f);
  let x_175 : f32 = u_xlat15;
  u_xlat15 = clamp(x_175, 0.0f, 1.0f);
  let x_177 : f32 = u_xlat15;
  u_xlat8.x = ((x_177 * -2.0f) + 3.0f);
  let x_183 : f32 = u_xlat15;
  let x_184 : f32 = u_xlat15;
  u_xlat15 = (x_183 * x_184);
  let x_186 : f32 = u_xlat15;
  let x_188 : f32 = u_xlat8.x;
  u_xlat15 = (x_186 * x_188);
  let x_190 : f32 = u_xlat15;
  u_xlat15 = (x_190 * 0.31621623f);
  let x_193 : f32 = u_xlat15;
  let x_195 : f32 = u_xlat3.x;
  u_xlat3.x = (x_193 * x_195);
  let x_201 : vec2<f32> = vs_TEXCOORD1;
  let x_202 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_201);
  u_xlat8.x = x_202.x;
  let x_206 : f32 = u_xlat8.x;
  let x_210 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_206 * 0.227027029f) + x_210);
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_217.x, x_217.y));
  u_xlat4 = x_219;
  let x_223 : vec4<f32> = u_xlat1;
  let x_225 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_223.z, x_223.w));
  u_xlat1 = x_225;
  let x_226 : vec4<f32> = u_xlat4;
  u_xlat8 = ((vec3<f32>(x_226.y, x_226.z, x_226.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_230 : vec4<f32> = u_xlat0;
  let x_232 : vec3<f32> = u_xlat8;
  u_xlat8.x = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), x_232);
  let x_236 : f32 = u_xlat8.x;
  u_xlat8.x = (x_236 + -0.800000012f);
  let x_240 : f32 = u_xlat8.x;
  u_xlat8.x = (x_240 * 5.000000477f);
  let x_244 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_244, 0.0f, 1.0f);
  let x_249 : f32 = u_xlat8.x;
  u_xlat13 = ((x_249 * -2.0f) + 3.0f);
  let x_253 : f32 = u_xlat8.x;
  let x_255 : f32 = u_xlat8.x;
  u_xlat8.x = (x_253 * x_255);
  let x_259 : f32 = u_xlat8.x;
  let x_260 : f32 = u_xlat13;
  u_xlat8.x = (x_259 * x_260);
  let x_264 : f32 = u_xlat8.x;
  u_xlat13 = (x_264 * 0.31621623f);
  let x_267 : f32 = u_xlat8.x;
  let x_269 : f32 = u_xlat15;
  u_xlat15 = ((x_267 * 0.31621623f) + x_269);
  let x_272 : f32 = u_xlat4.x;
  let x_273 : f32 = u_xlat13;
  let x_276 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_272 * x_273) + x_276);
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_280.y, x_280.z, x_280.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_284 : vec4<f32> = u_xlat0;
  let x_286 : vec3<f32> = u_xlat7;
  u_xlat7.x = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), x_286);
  let x_290 : f32 = u_xlat7.x;
  u_xlat7.x = (x_290 + -0.800000012f);
  let x_294 : f32 = u_xlat7.x;
  u_xlat7.x = (x_294 * 5.000000477f);
  let x_298 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_298, 0.0f, 1.0f);
  let x_303 : f32 = u_xlat7.x;
  u_xlat12 = ((x_303 * -2.0f) + 3.0f);
  let x_307 : f32 = u_xlat7.x;
  let x_309 : f32 = u_xlat7.x;
  u_xlat7.x = (x_307 * x_309);
  let x_313 : f32 = u_xlat7.x;
  let x_314 : f32 = u_xlat12;
  u_xlat7.x = (x_313 * x_314);
  let x_318 : f32 = u_xlat7.x;
  u_xlat12 = (x_318 * 0.07027027f);
  let x_322 : f32 = u_xlat7.x;
  let x_324 : f32 = u_xlat15;
  u_xlat15 = ((x_322 * 0.07027027f) + x_324);
  let x_327 : f32 = u_xlat2.x;
  let x_328 : f32 = u_xlat12;
  let x_331 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_327 * x_328) + x_331);
  let x_335 : vec4<f32> = u_xlat1;
  u_xlat6 = ((vec3<f32>(x_335.y, x_335.z, x_335.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_339 : vec4<f32> = u_xlat0;
  let x_341 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_339.x, x_339.y, x_339.z), x_341);
  let x_346 : vec4<f32> = u_xlat0;
  let x_351 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_352 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_352.x, x_351.x, x_351.y, x_351.z);
  let x_355 : f32 = u_xlat6.x;
  u_xlat0.x = (x_355 + -0.800000012f);
  let x_359 : f32 = u_xlat0.x;
  u_xlat0.x = (x_359 * 5.000000477f);
  let x_363 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_363, 0.0f, 1.0f);
  let x_368 : f32 = u_xlat0.x;
  u_xlat5 = ((x_368 * -2.0f) + 3.0f);
  let x_372 : f32 = u_xlat0.x;
  let x_374 : f32 = u_xlat0.x;
  u_xlat0.x = (x_372 * x_374);
  let x_378 : f32 = u_xlat0.x;
  let x_379 : f32 = u_xlat5;
  u_xlat0.x = (x_378 * x_379);
  let x_383 : f32 = u_xlat0.x;
  u_xlat5 = (x_383 * 0.07027027f);
  let x_386 : f32 = u_xlat0.x;
  let x_388 : f32 = u_xlat15;
  u_xlat0.x = ((x_386 * 0.07027027f) + x_388);
  let x_392 : f32 = u_xlat0.x;
  u_xlat0.x = (x_392 + 0.227027029f);
  let x_396 : f32 = u_xlat1.x;
  let x_397 : f32 = u_xlat5;
  let x_400 : f32 = u_xlat2.x;
  u_xlat5 = ((x_396 * x_397) + x_400);
  let x_402 : f32 = u_xlat5;
  let x_404 : f32 = u_xlat0.x;
  SV_Target0.x = (x_402 / x_404);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

