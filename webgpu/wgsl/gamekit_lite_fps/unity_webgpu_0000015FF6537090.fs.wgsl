struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_CameraDepthTexture_TexelSize : vec4<f32>,
  x_Jitter : vec2<f32>,
  @size(8)
  padding_1 : u32,
  x_FinalBlendParameters : vec4<f32>,
  x_Sharpness : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_16 : PGlobals;

@group(0) @binding(3) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat14 : vec2<f32>;

@group(0) @binding(4) var x_CameraMotionVectorsTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraMotionVectorsTexture : sampler;

@group(0) @binding(2) var x_HistoryTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_HistoryTex : sampler;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD1;
  let x_21 : vec4<f32> = x_16.x_CameraDepthTexture_TexelSize;
  let x_24 : vec2<f32> = (x_13 + -(vec2<f32>(x_21.x, x_21.y)));
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_24.x, x_24.y, x_25.z, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  let x_31 : vec2<f32> = max(vec2<f32>(x_27.x, x_27.y), vec2<f32>(0.0f, 0.0f));
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_31.x, x_31.y, x_32.z, x_32.w);
  let x_34 : vec4<f32> = u_xlat0;
  let x_39 : f32 = x_16.x_RenderViewportScaleFactor;
  let x_41 : vec2<f32> = min(vec2<f32>(x_34.x, x_34.y), vec2<f32>(x_39, x_39));
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_41.x, x_41.y, x_42.z, x_42.w);
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_54.x, x_54.y));
  u_xlat0.z = x_56.x;
  let x_67 : vec2<f32> = vs_TEXCOORD1;
  let x_68 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_67);
  u_xlat1.z = x_68.x;
  let x_75 : f32 = u_xlat0.z;
  let x_77 : f32 = u_xlat1.z;
  u_xlatb21 = (x_75 >= x_77);
  let x_80 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_80);
  u_xlat0.x = -1.0f;
  u_xlat0.y = -1.0f;
  u_xlat1.x = 0.0f;
  u_xlat1.y = 0.0f;
  let x_90 : vec4<f32> = u_xlat0;
  let x_92 : vec4<f32> = u_xlat1;
  let x_95 : vec3<f32> = (vec3<f32>(x_90.x, x_90.y, x_90.z) + -(vec3<f32>(x_92.y, x_92.y, x_92.z)));
  let x_96 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_98 : f32 = u_xlat21;
  let x_100 : vec4<f32> = u_xlat0;
  let x_103 : vec4<f32> = u_xlat1;
  let x_105 : vec3<f32> = ((vec3<f32>(x_98, x_98, x_98) * vec3<f32>(x_100.x, x_100.y, x_100.z)) + vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_106 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  u_xlat1.x = 1.0f;
  u_xlat1.y = -1.0f;
  let x_112 : vec4<f32> = x_16.x_CameraDepthTexture_TexelSize;
  let x_116 : vec2<f32> = vs_TEXCOORD1;
  u_xlat2 = ((vec4<f32>(x_112.x, x_112.y, x_112.x, x_112.y) * vec4<f32>(1.0f, -1.0f, -1.0f, 1.0f)) + vec4<f32>(x_116.x, x_116.y, x_116.x, x_116.y));
  let x_119 : vec4<f32> = u_xlat2;
  u_xlat2 = max(x_119, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_122 : vec4<f32> = u_xlat2;
  let x_124 : f32 = x_16.x_RenderViewportScaleFactor;
  u_xlat2 = min(x_122, vec4<f32>(x_124, x_124, x_124, x_124));
  let x_130 : vec4<f32> = u_xlat2;
  let x_132 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_130.x, x_130.y));
  u_xlat1.z = x_132.x;
  let x_138 : vec4<f32> = u_xlat2;
  let x_140 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_138.z, x_138.w));
  u_xlat2.z = x_140.x;
  let x_144 : f32 = u_xlat1.z;
  let x_146 : f32 = u_xlat0.z;
  u_xlatb21 = (x_144 >= x_146);
  let x_148 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_148);
  let x_150 : vec4<f32> = u_xlat0;
  let x_153 : vec4<f32> = u_xlat1;
  let x_155 : vec3<f32> = (-(vec3<f32>(x_150.y, x_150.y, x_150.z)) + vec3<f32>(x_153.x, x_153.y, x_153.z));
  let x_156 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
  let x_158 : f32 = u_xlat21;
  let x_160 : vec4<f32> = u_xlat1;
  let x_163 : vec4<f32> = u_xlat0;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158, x_158, x_158) * vec3<f32>(x_160.x, x_160.y, x_160.z)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  u_xlat2.x = -1.0f;
  u_xlat2.y = 1.0f;
  let x_171 : f32 = u_xlat2.z;
  let x_173 : f32 = u_xlat0.z;
  u_xlatb21 = (x_171 >= x_173);
  let x_175 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_175);
  let x_177 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = u_xlat2;
  let x_182 : vec3<f32> = (-(vec3<f32>(x_177.x, x_177.y, x_177.z)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  let x_185 : f32 = u_xlat21;
  let x_187 : vec4<f32> = u_xlat1;
  let x_190 : vec4<f32> = u_xlat0;
  let x_192 : vec3<f32> = ((vec3<f32>(x_185, x_185, x_185) * vec3<f32>(x_187.x, x_187.y, x_187.z)) + vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_193 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec2<f32> = vs_TEXCOORD1;
  let x_197 : vec4<f32> = x_16.x_CameraDepthTexture_TexelSize;
  let x_199 : vec2<f32> = (x_195 + vec2<f32>(x_197.x, x_197.y));
  let x_200 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_199.x, x_199.y, x_200.z, x_200.w);
  let x_202 : vec4<f32> = u_xlat1;
  let x_204 : vec2<f32> = max(vec2<f32>(x_202.x, x_202.y), vec2<f32>(0.0f, 0.0f));
  let x_205 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_204.x, x_204.y, x_205.z, x_205.w);
  let x_207 : vec4<f32> = u_xlat1;
  let x_210 : f32 = x_16.x_RenderViewportScaleFactor;
  let x_212 : vec2<f32> = min(vec2<f32>(x_207.x, x_207.y), vec2<f32>(x_210, x_210));
  let x_213 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_212.x, x_212.y, x_213.z, x_213.w);
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_218.x, x_218.y));
  u_xlat21 = x_220.x;
  let x_223 : f32 = u_xlat21;
  let x_225 : f32 = u_xlat0.z;
  u_xlatb14 = (x_223 >= x_225);
  let x_229 : bool = u_xlatb14;
  u_xlat14.x = select(0.0f, 1.0f, x_229);
  let x_232 : vec4<f32> = u_xlat0;
  let x_236 : vec2<f32> = (-(vec2<f32>(x_232.x, x_232.y)) + vec2<f32>(1.0f, 1.0f));
  let x_237 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_236.x, x_236.y, x_237.z, x_237.w);
  let x_239 : vec2<f32> = u_xlat14;
  let x_241 : vec4<f32> = u_xlat1;
  let x_244 : vec4<f32> = u_xlat0;
  let x_246 : vec2<f32> = ((vec2<f32>(x_239.x, x_239.x) * vec2<f32>(x_241.x, x_241.y)) + vec2<f32>(x_244.x, x_244.y));
  let x_247 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_246.x, x_246.y, x_247.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat0;
  let x_252 : vec4<f32> = x_16.x_CameraDepthTexture_TexelSize;
  let x_255 : vec2<f32> = vs_TEXCOORD1;
  let x_256 : vec2<f32> = ((vec2<f32>(x_249.x, x_249.y) * vec2<f32>(x_252.x, x_252.y)) + x_255);
  let x_257 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_256.x, x_256.y, x_257.z, x_257.w);
  let x_264 : vec4<f32> = u_xlat0;
  let x_266 : vec4<f32> = textureSample(x_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture, vec2<f32>(x_264.x, x_264.y));
  let x_267 : vec2<f32> = vec2<f32>(x_266.x, x_266.y);
  let x_268 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_267.x, x_267.y, x_268.z, x_268.w);
  let x_270 : vec4<f32> = u_xlat0;
  let x_272 : vec4<f32> = u_xlat0;
  u_xlat14.x = dot(vec2<f32>(x_270.x, x_270.y), vec2<f32>(x_272.x, x_272.y));
  let x_276 : vec4<f32> = u_xlat0;
  let x_279 : vec2<f32> = vs_TEXCOORD1;
  let x_280 : vec2<f32> = (-(vec2<f32>(x_276.x, x_276.y)) + x_279);
  let x_281 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_280.x, x_280.y, x_281.z, x_281.w);
  let x_283 : vec4<f32> = u_xlat0;
  let x_285 : vec2<f32> = max(vec2<f32>(x_283.x, x_283.y), vec2<f32>(0.0f, 0.0f));
  let x_286 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_285.x, x_285.y, x_286.z, x_286.w);
  let x_288 : vec4<f32> = u_xlat0;
  let x_291 : f32 = x_16.x_RenderViewportScaleFactor;
  let x_293 : vec2<f32> = min(vec2<f32>(x_288.x, x_288.y), vec2<f32>(x_291, x_291));
  let x_294 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_293.x, x_293.y, x_294.z, x_294.w);
  let x_301 : vec4<f32> = u_xlat0;
  let x_303 : vec4<f32> = textureSample(x_HistoryTex, sampler_HistoryTex, vec2<f32>(x_301.x, x_301.y));
  u_xlat1 = x_303;
  let x_305 : f32 = u_xlat14.x;
  u_xlat0.x = sqrt(x_305);
  let x_311 : f32 = u_xlat0.x;
  u_xlat7.x = (x_311 * 100.0f);
  let x_316 : f32 = u_xlat0.x;
  let x_319 : f32 = x_16.x_FinalBlendParameters.z;
  u_xlat0.x = (x_316 * x_319);
  let x_323 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_323, 1.0f);
  let x_327 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_327 * -3.75f) + 4.0f);
  let x_333 : vec2<f32> = vs_TEXCOORD1;
  let x_337 : vec2<f32> = x_16.x_Jitter;
  u_xlat14 = (x_333 + -(x_337));
  let x_340 : vec2<f32> = u_xlat14;
  u_xlat14 = max(x_340, vec2<f32>(0.0f, 0.0f));
  let x_342 : vec2<f32> = u_xlat14;
  let x_344 : f32 = x_16.x_RenderViewportScaleFactor;
  u_xlat14 = min(x_342, vec2<f32>(x_344, x_344));
  let x_349 : vec4<f32> = x_16.x_MainTex_TexelSize;
  let x_355 : vec2<f32> = u_xlat14;
  let x_356 : vec2<f32> = ((-(vec2<f32>(x_349.x, x_349.y)) * vec2<f32>(0.5f, 0.5f)) + x_355);
  let x_357 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_356.x, x_356.y, x_357.z, x_357.w);
  let x_359 : vec4<f32> = u_xlat2;
  let x_361 : vec2<f32> = max(vec2<f32>(x_359.x, x_359.y), vec2<f32>(0.0f, 0.0f));
  let x_362 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_361.x, x_361.y, x_362.z, x_362.w);
  let x_364 : vec4<f32> = u_xlat2;
  let x_367 : f32 = x_16.x_RenderViewportScaleFactor;
  let x_369 : vec2<f32> = min(vec2<f32>(x_364.x, x_364.y), vec2<f32>(x_367, x_367));
  let x_370 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
  let x_377 : vec4<f32> = u_xlat2;
  let x_379 : vec4<f32> = textureSample(x_MainTex, sampler_LinearClamp, vec2<f32>(x_377.x, x_377.y));
  u_xlat2 = x_379;
  let x_382 : vec4<f32> = x_16.x_MainTex_TexelSize;
  let x_385 : vec2<f32> = u_xlat14;
  let x_386 : vec2<f32> = ((vec2<f32>(x_382.x, x_382.y) * vec2<f32>(0.5f, 0.5f)) + x_385);
  let x_387 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_386.x, x_386.y, x_387.z, x_387.w);
  let x_393 : vec2<f32> = u_xlat14;
  let x_394 : vec4<f32> = textureSample(x_MainTex, sampler_LinearClamp, x_393);
  u_xlat4 = x_394;
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat14 = max(vec2<f32>(x_395.x, x_395.y), vec2<f32>(0.0f, 0.0f));
  let x_398 : vec2<f32> = u_xlat14;
  let x_400 : f32 = x_16.x_RenderViewportScaleFactor;
  u_xlat14 = min(x_398, vec2<f32>(x_400, x_400));
  let x_406 : vec2<f32> = u_xlat14;
  let x_407 : vec4<f32> = textureSample(x_MainTex, sampler_LinearClamp, x_406);
  u_xlat3 = x_407;
  let x_409 : vec4<f32> = u_xlat2;
  let x_410 : vec4<f32> = u_xlat3;
  u_xlat5 = (x_409 + x_410);
  let x_413 : vec4<f32> = u_xlat4;
  let x_414 : vec4<f32> = u_xlat4;
  u_xlat6 = (x_413 + x_414);
  let x_416 : vec4<f32> = u_xlat5;
  let x_419 : vec4<f32> = u_xlat6;
  u_xlat5 = ((x_416 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + -(x_419));
  let x_422 : vec4<f32> = u_xlat5;
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat6 = ((-(x_422) * vec4<f32>(0.166666999f, 0.166666999f, 0.166666999f, 0.166666999f)) + x_427);
  let x_429 : vec4<f32> = u_xlat6;
  let x_432 : f32 = x_16.x_Sharpness;
  u_xlat6 = (x_429 * vec4<f32>(x_432, x_432, x_432, x_432));
  let x_435 : vec4<f32> = u_xlat6;
  let x_439 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_435 * vec4<f32>(2.718281984f, 2.718281984f, 2.718281984f, 2.718281984f)) + x_439);
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat4 = max(x_441, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_443 : vec4<f32> = u_xlat4;
  u_xlat4 = min(x_443, vec4<f32>(65472.0f, 65472.0f, 65472.0f, 65472.0f));
  let x_447 : vec4<f32> = u_xlat4;
  let x_449 : vec4<f32> = u_xlat5;
  let x_451 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) + vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat5;
  let x_458 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) * vec3<f32>(0.142857f, 0.142857f, 0.142857f));
  let x_459 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_461 : vec4<f32> = u_xlat5;
  u_xlat14.x = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_469 : vec4<f32> = u_xlat4;
  u_xlat21 = dot(vec3<f32>(x_469.x, x_469.y, x_469.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_472 : f32 = u_xlat21;
  let x_475 : f32 = u_xlat14.x;
  u_xlat14.x = (-(x_472) + x_475);
  let x_478 : vec4<f32> = u_xlat2;
  let x_480 : vec4<f32> = u_xlat3;
  let x_482 : vec3<f32> = min(vec3<f32>(x_478.x, x_478.y, x_478.z), vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat2;
  let x_487 : vec4<f32> = u_xlat3;
  let x_489 : vec3<f32> = max(vec3<f32>(x_485.x, x_485.y, x_485.z), vec3<f32>(x_487.x, x_487.y, x_487.z));
  let x_490 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : vec3<f32> = u_xlat7;
  let x_494 : vec2<f32> = u_xlat14;
  let x_498 : vec4<f32> = u_xlat2;
  let x_500 : vec3<f32> = ((vec3<f32>(x_492.x, x_492.x, x_492.x) * abs(vec3<f32>(x_494.x, x_494.x, x_494.x))) + vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec3<f32> = u_xlat7;
  let x_506 : vec2<f32> = u_xlat14;
  let x_510 : vec4<f32> = u_xlat5;
  u_xlat7 = ((-(vec3<f32>(x_503.x, x_503.x, x_503.x)) * abs(vec3<f32>(x_506.x, x_506.x, x_506.x))) + vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec3<f32> = u_xlat7;
  let x_515 : vec4<f32> = u_xlat2;
  let x_517 : vec3<f32> = (-(x_513) + vec3<f32>(x_515.x, x_515.y, x_515.z));
  let x_518 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_520 : vec3<f32> = u_xlat7;
  let x_521 : vec4<f32> = u_xlat2;
  u_xlat7 = (x_520 + vec3<f32>(x_521.x, x_521.y, x_521.z));
  let x_524 : vec4<f32> = u_xlat3;
  let x_527 : vec3<f32> = (vec3<f32>(x_524.x, x_524.y, x_524.z) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_528 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_530 : vec3<f32> = u_xlat7;
  let x_533 : vec4<f32> = u_xlat1;
  let x_535 : vec3<f32> = ((-(x_530) * vec3<f32>(0.5f, 0.5f, 0.5f)) + vec3<f32>(x_533.x, x_533.y, x_533.z));
  let x_536 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_538 : vec3<f32> = u_xlat7;
  u_xlat7 = (x_538 * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_540 : vec4<f32> = u_xlat3;
  let x_544 : vec3<f32> = (vec3<f32>(x_540.x, x_540.y, x_540.z) + vec3<f32>(0.0001f, 0.0001f, 0.0001f));
  let x_545 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
  let x_547 : vec4<f32> = u_xlat2;
  let x_549 : vec4<f32> = u_xlat5;
  let x_551 : vec3<f32> = (vec3<f32>(x_547.x, x_547.y, x_547.z) / vec3<f32>(x_549.x, x_549.y, x_549.z));
  let x_552 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_555 : f32 = u_xlat2.y;
  let x_558 : f32 = u_xlat2.x;
  u_xlat2.x = min(abs(x_555), abs(x_558));
  let x_563 : f32 = u_xlat2.z;
  let x_566 : f32 = u_xlat2.x;
  u_xlat2.x = min(abs(x_563), x_566);
  let x_570 : f32 = u_xlat2.x;
  u_xlat2.x = min(x_570, 1.0f);
  let x_573 : vec4<f32> = u_xlat3;
  let x_575 : vec4<f32> = u_xlat2;
  let x_578 : vec3<f32> = u_xlat7;
  let x_579 : vec3<f32> = ((vec3<f32>(x_573.x, x_573.y, x_573.z) * vec3<f32>(x_575.x, x_575.x, x_575.x)) + x_578);
  let x_580 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_582 : vec4<f32> = u_xlat4;
  let x_584 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_582) + x_584);
  let x_587 : f32 = x_16.x_FinalBlendParameters.x;
  let x_590 : f32 = x_16.x_FinalBlendParameters.y;
  u_xlat7.x = (-(x_587) + x_590);
  let x_594 : f32 = u_xlat0.x;
  let x_596 : f32 = u_xlat7.x;
  let x_599 : f32 = x_16.x_FinalBlendParameters.x;
  u_xlat0.x = ((x_594 * x_596) + x_599);
  let x_603 : f32 = u_xlat0.x;
  let x_605 : f32 = x_16.x_FinalBlendParameters.y;
  u_xlat0.x = max(x_603, x_605);
  let x_609 : f32 = u_xlat0.x;
  let x_611 : f32 = x_16.x_FinalBlendParameters.x;
  u_xlat0.x = min(x_609, x_611);
  let x_614 : vec4<f32> = u_xlat0;
  let x_616 : vec4<f32> = u_xlat1;
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat0 = ((vec4<f32>(x_614.x, x_614.x, x_614.x, x_614.x) * x_616) + x_618);
  let x_620 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_620, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_622 : vec4<f32> = u_xlat0;
  u_xlat0 = min(x_622, vec4<f32>(65472.0f, 65472.0f, 65472.0f, 65472.0f));
  let x_626 : vec4<f32> = u_xlat0;
  SV_Target0 = x_626;
  let x_628 : vec4<f32> = u_xlat0;
  SV_Target1 = x_628;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

