struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  unity_MatrixInvVP : mat4x4<f32>,
  x_ViewProjM : mat4x4<f32>,
  x_PrevViewProjM : mat4x4<f32>,
  x_Intensity : f32,
  x_Clamp : f32,
  @size(8)
  padding_1 : u32,
  x_SourceSize : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_30 : PGlobals;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_PointClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat18 : f32;
  var u_xlatb6 : bool;
  var x_229 : vec2<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = vs_TEXCOORD0;
  let x_20 : vec2<f32> = ((vec2<f32>(x_13.x, x_13.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_21 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_20.x, x_20.y, x_21.z, x_21.w);
  let x_24 : vec4<f32> = u_xlat0;
  let x_35 : vec4<f32> = x_30.unity_MatrixInvVP[1i];
  u_xlat1 = (-(vec4<f32>(x_24.y, x_24.y, x_24.y, x_24.y)) * x_35);
  let x_39 : vec4<f32> = x_30.unity_MatrixInvVP[0i];
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_39 * vec4<f32>(x_40.x, x_40.x, x_40.x, x_40.x)) + x_43);
  let x_55 : vec4<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_30.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_55.x, x_55.y), x_61);
  u_xlat1.x = x_62.x;
  let x_68 : vec4<f32> = x_30.unity_MatrixInvVP[2i];
  let x_69 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_68 * vec4<f32>(x_69.x, x_69.x, x_69.x, x_69.x)) + x_72);
  let x_74 : vec4<f32> = u_xlat0;
  let x_77 : vec4<f32> = x_30.unity_MatrixInvVP[3i];
  u_xlat0 = (x_74 + x_77);
  let x_80 : vec4<f32> = u_xlat0;
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : vec3<f32> = (vec3<f32>(x_80.x, x_80.y, x_80.z) / vec3<f32>(x_82.w, x_82.w, x_82.w));
  let x_85 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_84.x, x_84.y, x_84.z, x_85.w);
  let x_87 : vec4<f32> = u_xlat0;
  let x_90 : vec4<f32> = x_30.x_PrevViewProjM[1i];
  let x_92 : vec3<f32> = (vec3<f32>(x_87.y, x_87.y, x_87.y) * vec3<f32>(x_90.x, x_90.y, x_90.w));
  let x_93 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : vec4<f32> = x_30.x_PrevViewProjM[0i];
  let x_98 : vec4<f32> = u_xlat0;
  let x_101 : vec4<f32> = u_xlat1;
  let x_103 : vec3<f32> = ((vec3<f32>(x_96.x, x_96.y, x_96.w) * vec3<f32>(x_98.x, x_98.x, x_98.x)) + vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_107 : vec4<f32> = x_30.x_PrevViewProjM[2i];
  let x_109 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.w) * vec3<f32>(x_109.z, x_109.z, x_109.z)) + vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_117 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = x_30.x_PrevViewProjM[3i];
  let x_122 : vec3<f32> = (vec3<f32>(x_117.x, x_117.y, x_117.z) + vec3<f32>(x_120.x, x_120.y, x_120.w));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat1;
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec2<f32> = (vec2<f32>(x_125.x, x_125.y) / vec2<f32>(x_127.z, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_130.z, x_130.w);
  let x_134 : vec4<f32> = u_xlat0;
  let x_137 : vec4<f32> = x_30.x_ViewProjM[1i];
  u_xlat2 = (vec3<f32>(x_134.y, x_134.y, x_134.y) * vec3<f32>(x_137.x, x_137.y, x_137.w));
  let x_141 : vec4<f32> = x_30.x_ViewProjM[0i];
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec3<f32> = u_xlat2;
  let x_147 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.w) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_147.y, x_148.z, x_147.z);
  let x_151 : vec4<f32> = x_30.x_ViewProjM[2i];
  let x_153 : vec4<f32> = u_xlat0;
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.w) * vec3<f32>(x_153.z, x_153.z, x_153.z)) + vec3<f32>(x_156.x, x_156.y, x_156.w));
  let x_159 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat0;
  let x_164 : vec4<f32> = x_30.x_ViewProjM[3i];
  let x_166 : vec3<f32> = (vec3<f32>(x_161.x, x_161.y, x_161.z) + vec3<f32>(x_164.x, x_164.y, x_164.w));
  let x_167 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_169 : vec4<f32> = u_xlat0;
  let x_171 : vec4<f32> = u_xlat0;
  let x_173 : vec2<f32> = (vec2<f32>(x_169.x, x_169.y) / vec2<f32>(x_171.z, x_171.z));
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_173.x, x_173.y, x_174.z, x_174.w);
  let x_176 : vec4<f32> = u_xlat0;
  let x_179 : vec4<f32> = u_xlat1;
  let x_181 : vec2<f32> = (-(vec2<f32>(x_176.x, x_176.y)) + vec2<f32>(x_179.x, x_179.y));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_181.x, x_181.y, x_182.z, x_182.w);
  let x_186 : f32 = u_xlat0.y;
  u_xlat0.z = -(x_186);
  let x_191 : vec4<f32> = u_xlat0;
  let x_193 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec2<f32>(x_191.x, x_191.z), vec2<f32>(x_193.x, x_193.z));
  let x_196 : f32 = u_xlat6;
  u_xlat6 = sqrt(x_196);
  let x_200 : f32 = u_xlat6;
  u_xlat18 = (1.0f / x_200);
  let x_202 : f32 = u_xlat18;
  let x_204 : vec4<f32> = u_xlat0;
  let x_206 : vec2<f32> = (vec2<f32>(x_202, x_202) * vec2<f32>(x_204.x, x_204.z));
  let x_207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_206.x, x_207.y, x_206.y, x_207.w);
  let x_209 : f32 = u_xlat6;
  let x_212 : f32 = x_30.x_Clamp;
  u_xlat18 = min(x_209, x_212);
  let x_218 : f32 = u_xlat6;
  u_xlatb6 = (0.0f < x_218);
  let x_220 : vec4<f32> = u_xlat0;
  let x_222 : f32 = u_xlat18;
  let x_224 : vec2<f32> = (vec2<f32>(x_220.x, x_220.z) * vec2<f32>(x_222, x_222));
  let x_225 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_224.x, x_225.y, x_224.y, x_225.w);
  let x_227 : bool = u_xlatb6;
  if (x_227) {
    let x_232 : vec4<f32> = u_xlat0;
    x_229 = vec2<f32>(x_232.x, x_232.z);
  } else {
    x_229 = vec2<f32>(0.0f, 0.0f);
  }
  let x_236 : vec2<f32> = x_229;
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_236.x, x_236.y, x_237.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat0;
  let x_243 : f32 = x_30.x_Intensity;
  let x_245 : vec2<f32> = (vec2<f32>(x_239.x, x_239.y) * vec2<f32>(x_243, x_243));
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_245.x, x_245.y, x_246.z, x_246.w);
  let x_249 : vec4<f32> = vs_TEXCOORD0;
  let x_253 : vec4<f32> = x_30.x_SourceSize;
  u_xlat12 = (vec2<f32>(x_249.x, x_249.y) * vec2<f32>(x_253.x, x_253.y));
  let x_256 : vec2<f32> = u_xlat12;
  u_xlat12.x = dot(x_256, vec2<f32>(0.067110561f, 0.00583715f));
  let x_263 : f32 = u_xlat12.x;
  u_xlat12.x = fract(x_263);
  let x_267 : f32 = u_xlat12.x;
  u_xlat12.x = (x_267 * 52.982917786f);
  let x_272 : f32 = u_xlat12.x;
  u_xlat12.x = fract(x_272);
  let x_276 : f32 = u_xlat12.x;
  u_xlat18 = (x_276 * 0.125f);
  let x_279 : vec2<f32> = u_xlat12;
  u_xlat1 = (vec4<f32>(x_279.x, x_279.x, x_279.x, x_279.x) + vec4<f32>(-0.5f, 1.0f, 2.0f, 3.0f));
  let x_285 : f32 = u_xlat18;
  let x_287 : vec4<f32> = u_xlat0;
  let x_290 : vec4<f32> = vs_TEXCOORD0;
  u_xlat12 = ((vec2<f32>(x_285, x_285) * vec2<f32>(x_287.x, x_287.y)) + vec2<f32>(x_290.x, x_290.y));
  let x_298 : vec2<f32> = u_xlat12;
  let x_300 : f32 = x_30.x_GlobalMipBias.x;
  let x_301 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, x_298, x_300);
  u_xlat2 = vec3<f32>(x_301.x, x_301.y, x_301.z);
  let x_304 : vec4<f32> = u_xlat1;
  u_xlat3 = (-(vec4<f32>(x_304.x, x_304.x, x_304.x, x_304.x)) + vec4<f32>(0.5f, 1.5f, 2.5f, 3.5f));
  let x_313 : vec4<f32> = u_xlat1;
  let x_316 : vec3<f32> = (vec3<f32>(x_313.y, x_313.z, x_313.w) * vec3<f32>(0.125f, 0.125f, 0.125f));
  let x_317 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_319 * vec4<f32>(0.125f, 0.125f, 0.125f, 0.125f));
  let x_323 : vec4<f32> = u_xlat3;
  let x_326 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = vs_TEXCOORD0;
  u_xlat4 = ((-(vec4<f32>(x_323.x, x_323.x, x_323.y, x_323.y)) * vec4<f32>(x_326.x, x_326.y, x_326.x, x_326.y)) + vec4<f32>(x_329.x, x_329.y, x_329.x, x_329.y));
  let x_332 : vec4<f32> = u_xlat3;
  let x_335 : vec4<f32> = u_xlat0;
  let x_338 : vec4<f32> = vs_TEXCOORD0;
  u_xlat3 = ((-(vec4<f32>(x_332.z, x_332.z, x_332.w, x_332.w)) * vec4<f32>(x_335.x, x_335.y, x_335.x, x_335.y)) + vec4<f32>(x_338.x, x_338.y, x_338.x, x_338.y));
  let x_345 : vec4<f32> = u_xlat4;
  let x_348 : f32 = x_30.x_GlobalMipBias.x;
  let x_349 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_345.x, x_345.y), x_348);
  u_xlat5 = vec3<f32>(x_349.x, x_349.y, x_349.z);
  let x_354 : vec4<f32> = u_xlat4;
  let x_357 : f32 = x_30.x_GlobalMipBias.x;
  let x_358 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_354.z, x_354.w), x_357);
  let x_359 : vec3<f32> = vec3<f32>(x_358.x, x_358.y, x_358.z);
  let x_360 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec3<f32> = u_xlat2;
  let x_363 : vec3<f32> = u_xlat5;
  u_xlat2 = (x_362 + x_363);
  let x_365 : vec4<f32> = u_xlat4;
  let x_367 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_365.x, x_365.y, x_365.z) + x_367);
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec4<f32> = u_xlat0;
  let x_374 : vec4<f32> = vs_TEXCOORD0;
  u_xlat4 = ((vec4<f32>(x_369.x, x_369.x, x_369.y, x_369.y) * vec4<f32>(x_371.x, x_371.y, x_371.x, x_371.y)) + vec4<f32>(x_374.x, x_374.y, x_374.x, x_374.y));
  let x_377 : vec4<f32> = u_xlat1;
  let x_379 : vec4<f32> = u_xlat0;
  let x_382 : vec4<f32> = vs_TEXCOORD0;
  let x_384 : vec2<f32> = ((vec2<f32>(x_377.z, x_377.z) * vec2<f32>(x_379.x, x_379.y)) + vec2<f32>(x_382.x, x_382.y));
  let x_385 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_384.x, x_384.y, x_385.z, x_385.w);
  let x_390 : vec4<f32> = u_xlat0;
  let x_393 : f32 = x_30.x_GlobalMipBias.x;
  let x_394 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_390.x, x_390.y), x_393);
  let x_395 : vec3<f32> = vec3<f32>(x_394.x, x_394.y, x_394.z);
  let x_396 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_401 : vec4<f32> = u_xlat4;
  let x_404 : f32 = x_30.x_GlobalMipBias.x;
  let x_405 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_401.x, x_401.y), x_404);
  let x_406 : vec3<f32> = vec3<f32>(x_405.x, x_405.y, x_405.z);
  let x_407 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_412 : vec4<f32> = u_xlat4;
  let x_415 : f32 = x_30.x_GlobalMipBias.x;
  let x_416 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_412.z, x_412.w), x_415);
  let x_417 : vec3<f32> = vec3<f32>(x_416.x, x_416.y, x_416.z);
  let x_418 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec3<f32> = u_xlat2;
  let x_423 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) + x_422);
  let x_424 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_429 : vec4<f32> = u_xlat3;
  let x_432 : f32 = x_30.x_GlobalMipBias.x;
  let x_433 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_429.x, x_429.y), x_432);
  u_xlat2 = vec3<f32>(x_433.x, x_433.y, x_433.z);
  let x_438 : vec4<f32> = u_xlat3;
  let x_441 : f32 = x_30.x_GlobalMipBias.x;
  let x_442 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_PointClamp, vec2<f32>(x_438.z, x_438.w), x_441);
  let x_443 : vec3<f32> = vec3<f32>(x_442.x, x_442.y, x_442.z);
  let x_444 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
  let x_446 : vec4<f32> = u_xlat1;
  let x_448 : vec3<f32> = u_xlat2;
  let x_449 : vec3<f32> = (vec3<f32>(x_446.x, x_446.y, x_446.z) + x_448);
  let x_450 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat4;
  let x_454 : vec4<f32> = u_xlat1;
  let x_456 : vec3<f32> = (vec3<f32>(x_452.x, x_452.y, x_452.z) + vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_459 : vec4<f32> = u_xlat3;
  let x_461 : vec4<f32> = u_xlat1;
  let x_463 : vec3<f32> = (vec3<f32>(x_459.x, x_459.y, x_459.z) + vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_466 : vec4<f32> = u_xlat0;
  let x_468 : vec4<f32> = u_xlat1;
  let x_470 : vec3<f32> = (vec3<f32>(x_466.x, x_466.y, x_466.z) + vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_475 : vec4<f32> = u_xlat0;
  let x_477 : vec3<f32> = (vec3<f32>(x_475.x, x_475.y, x_475.z) * vec3<f32>(0.125f, 0.125f, 0.125f));
  let x_478 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

