type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_CameraToWorld : mat4x4<f32>,
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  x_LightPos : vec4<f32>,
  x_LightColor : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_ShadowMapTexture_TexelSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(3) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(4) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(15) var sampler_CameraGBufferTexture2 : sampler;

@group(0) @binding(6) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat28 : f32;
  var u_xlatb20 : bool;
  var u_xlat20 : f32;
  var u_xlatb28 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat22 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : f32 = x_17.x_ProjectionParams.z;
  let x_28 : f32 = vs_TEXCOORD1.z;
  u_xlat0.x = (x_23 / x_28);
  let x_33 : vec4<f32> = u_xlat0;
  let x_35 : vec3<f32> = vs_TEXCOORD1;
  let x_36 : vec3<f32> = (vec3<f32>(x_33.x, x_33.x, x_33.x) * x_35);
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_44 : vec4<f32> = vs_TEXCOORD0;
  let x_46 : vec4<f32> = vs_TEXCOORD0;
  let x_48 : vec2<f32> = (vec2<f32>(x_44.x, x_44.y) / vec2<f32>(x_46.w, x_46.w));
  let x_49 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_62 : vec3<f32> = u_xlat1;
  let x_64 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_62.x, x_62.y));
  u_xlat27 = x_64.x;
  let x_68 : f32 = x_17.x_ZBufferParams.x;
  let x_69 : f32 = u_xlat27;
  let x_73 : f32 = x_17.x_ZBufferParams.y;
  u_xlat27 = ((x_68 * x_69) + x_73);
  let x_76 : f32 = u_xlat27;
  u_xlat27 = (1.0f / x_76);
  let x_79 : f32 = u_xlat27;
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_87 : vec4<f32> = u_xlat2;
  let x_92 : vec4<f32> = x_17.unity_CameraToWorld[1i];
  let x_94 : vec3<f32> = (vec3<f32>(x_87.y, x_87.y, x_87.y) * vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_99 : vec4<f32> = x_17.unity_CameraToWorld[0i];
  let x_101 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat3;
  let x_106 : vec3<f32> = ((vec3<f32>(x_99.x, x_99.y, x_99.z) * vec3<f32>(x_101.x, x_101.x, x_101.x)) + vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_106.z);
  let x_110 : vec4<f32> = x_17.unity_CameraToWorld[2i];
  let x_112 : vec4<f32> = u_xlat2;
  let x_115 : vec4<f32> = u_xlat2;
  let x_117 : vec3<f32> = ((vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_112.z, x_112.z, x_112.z)) + vec3<f32>(x_115.x, x_115.y, x_115.w));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_117.z);
  let x_120 : vec4<f32> = u_xlat2;
  let x_123 : vec4<f32> = x_17.unity_CameraToWorld[3i];
  let x_125 : vec3<f32> = (vec3<f32>(x_120.x, x_120.y, x_120.w) + vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_125.x, x_125.y, x_126.z, x_125.z);
  let x_128 : vec4<f32> = u_xlat2;
  let x_132 : vec4<f32> = x_17.unity_ShadowFadeCenterAndType;
  let x_135 : vec3<f32> = (vec3<f32>(x_128.x, x_128.y, x_128.w) + -(vec3<f32>(x_132.x, x_132.y, x_132.z)));
  let x_136 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_135.x, x_135.y, x_135.z, x_136.w);
  let x_138 : vec4<f32> = u_xlat3;
  let x_140 : vec4<f32> = u_xlat3;
  u_xlat0.x = dot(vec3<f32>(x_138.x, x_138.y, x_138.z), vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_145 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_145);
  let x_149 : f32 = u_xlat0.z;
  let x_151 : f32 = u_xlat27;
  let x_154 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_149) * x_151) + x_154);
  let x_159 : f32 = x_17.unity_ShadowFadeCenterAndType.w;
  let x_161 : f32 = u_xlat0.x;
  let x_164 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_159 * x_161) + x_164);
  let x_168 : vec4<f32> = u_xlat2;
  let x_173 : vec4<f32> = x_17.x_LightPos;
  u_xlat9 = (-(vec3<f32>(x_168.x, x_168.y, x_168.w)) + vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_177 : vec3<f32> = u_xlat9;
  let x_178 : vec3<f32> = u_xlat9;
  u_xlat19 = dot(x_177, x_178);
  let x_181 : f32 = u_xlat19;
  u_xlat28 = inverseSqrt(x_181);
  let x_183 : vec3<f32> = u_xlat9;
  let x_184 : f32 = u_xlat28;
  u_xlat9 = (x_183 * vec3<f32>(x_184, x_184, x_184));
  let x_187 : vec4<f32> = u_xlat2;
  let x_191 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_193 : vec3<f32> = (vec3<f32>(x_187.y, x_187.y, x_187.y) * vec3<f32>(x_191.x, x_191.y, x_191.w));
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_197 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_199 : vec4<f32> = u_xlat2;
  let x_202 : vec4<f32> = u_xlat3;
  let x_204 : vec3<f32> = ((vec3<f32>(x_197.x, x_197.y, x_197.w) * vec3<f32>(x_199.x, x_199.x, x_199.x)) + vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_208 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_210 : vec4<f32> = u_xlat2;
  let x_213 : vec4<f32> = u_xlat3;
  let x_215 : vec3<f32> = ((vec3<f32>(x_208.x, x_208.y, x_208.w) * vec3<f32>(x_210.w, x_210.w, x_210.w)) + vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_218 : vec4<f32> = u_xlat3;
  let x_221 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_223 : vec3<f32> = (vec3<f32>(x_218.x, x_218.y, x_218.z) + vec3<f32>(x_221.x, x_221.y, x_221.w));
  let x_224 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat3;
  let x_228 : vec4<f32> = u_xlat3;
  let x_230 : vec2<f32> = (vec2<f32>(x_226.x, x_226.y) / vec2<f32>(x_228.z, x_228.z));
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_230.x, x_230.y, x_231.z, x_231.w);
  let x_238 : vec4<f32> = u_xlat3;
  let x_241 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_238.x, x_238.y), -8.0f);
  u_xlat28 = x_241.w;
  let x_247 : f32 = u_xlat3.z;
  u_xlatb20 = (x_247 < 0.0f);
  let x_251 : bool = u_xlatb20;
  u_xlat20 = select(0.0f, 1.0f, x_251);
  let x_253 : f32 = u_xlat28;
  let x_254 : f32 = u_xlat20;
  u_xlat28 = (x_253 * x_254);
  let x_256 : f32 = u_xlat19;
  let x_258 : f32 = x_17.x_LightPos.w;
  u_xlat19 = (x_256 * x_258);
  let x_265 : f32 = u_xlat19;
  let x_267 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_265, x_265));
  u_xlat19 = x_267.x;
  let x_269 : f32 = u_xlat19;
  let x_270 : f32 = u_xlat28;
  u_xlat19 = (x_269 * x_270);
  let x_273 : f32 = u_xlat0.x;
  let x_276 : f32 = x_17.x_LightShadowData.z;
  let x_279 : f32 = x_17.x_LightShadowData.w;
  u_xlat0.x = ((x_273 * x_276) + x_279);
  let x_283 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_283, 0.0f, 1.0f);
  let x_288 : f32 = u_xlat0.x;
  u_xlatb28 = (x_288 < 0.99000001f);
  let x_291 : bool = u_xlatb28;
  if (x_291) {
    let x_294 : vec4<f32> = u_xlat2;
    let x_298 : vec4<f32> = x_17.unity_WorldToShadow[0i][1i];
    u_xlat3 = (vec4<f32>(x_294.y, x_294.y, x_294.y, x_294.y) * x_298);
    let x_301 : vec4<f32> = x_17.unity_WorldToShadow[0i][0i];
    let x_302 : vec4<f32> = u_xlat2;
    let x_305 : vec4<f32> = u_xlat3;
    u_xlat3 = ((x_301 * vec4<f32>(x_302.x, x_302.x, x_302.x, x_302.x)) + x_305);
    let x_308 : vec4<f32> = x_17.unity_WorldToShadow[0i][2i];
    let x_309 : vec4<f32> = u_xlat2;
    let x_312 : vec4<f32> = u_xlat3;
    u_xlat3 = ((x_308 * vec4<f32>(x_309.w, x_309.w, x_309.w, x_309.w)) + x_312);
    let x_314 : vec4<f32> = u_xlat3;
    let x_316 : vec4<f32> = x_17.unity_WorldToShadow[0i][3i];
    u_xlat3 = (x_314 + x_316);
    let x_318 : vec4<f32> = u_xlat3;
    let x_320 : vec4<f32> = u_xlat3;
    let x_322 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.z) / vec3<f32>(x_320.w, x_320.w, x_320.w));
    let x_323 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
    let x_326 : vec4<f32> = u_xlat3;
    let x_330 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_335 : vec2<f32> = ((vec2<f32>(x_326.x, x_326.y) * vec2<f32>(x_330.z, x_330.w)) + vec2<f32>(0.5f, 0.5f));
    let x_336 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_335.x, x_335.y, x_336.z, x_336.w);
    let x_338 : vec4<f32> = u_xlat4;
    let x_340 : vec2<f32> = floor(vec2<f32>(x_338.x, x_338.y));
    let x_341 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_340.x, x_340.y, x_341.z, x_341.w);
    let x_343 : vec4<f32> = u_xlat3;
    let x_346 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_349 : vec4<f32> = u_xlat4;
    let x_352 : vec2<f32> = ((vec2<f32>(x_343.x, x_343.y) * vec2<f32>(x_346.z, x_346.w)) + -(vec2<f32>(x_349.x, x_349.y)));
    let x_353 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_352.x, x_352.y, x_353.z, x_353.w);
    let x_356 : vec4<f32> = u_xlat3;
    u_xlat5 = (vec4<f32>(x_356.x, x_356.x, x_356.y, x_356.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
    let x_361 : vec4<f32> = u_xlat5;
    let x_363 : vec4<f32> = u_xlat5;
    let x_365 : vec2<f32> = (vec2<f32>(x_361.x, x_361.z) * vec2<f32>(x_363.x, x_363.z));
    let x_366 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_365.x, x_366.y, x_366.z, x_365.y);
    let x_370 : vec4<f32> = u_xlat6;
    let x_373 : vec4<f32> = u_xlat3;
    u_xlat22 = ((vec2<f32>(x_370.x, x_370.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_373.x, x_373.y)));
    let x_377 : vec4<f32> = u_xlat3;
    let x_381 : vec2<f32> = (-(vec2<f32>(x_377.x, x_377.y)) + vec2<f32>(1.0f, 1.0f));
    let x_382 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_381.x, x_382.y, x_381.y, x_382.w);
    let x_385 : vec4<f32> = u_xlat3;
    let x_388 : vec2<f32> = min(vec2<f32>(x_385.x, x_385.y), vec2<f32>(0.0f, 0.0f));
    let x_389 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
    let x_391 : vec4<f32> = u_xlat7;
    let x_394 : vec4<f32> = u_xlat7;
    let x_397 : vec4<f32> = u_xlat5;
    let x_399 : vec2<f32> = ((-(vec2<f32>(x_391.x, x_391.y)) * vec2<f32>(x_394.x, x_394.y)) + vec2<f32>(x_397.x, x_397.z));
    let x_400 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_399.x, x_400.y, x_399.y, x_400.w);
    let x_402 : vec4<f32> = u_xlat3;
    let x_404 : vec2<f32> = max(vec2<f32>(x_402.x, x_402.y), vec2<f32>(0.0f, 0.0f));
    let x_405 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
    let x_407 : vec4<f32> = u_xlat3;
    let x_410 : vec4<f32> = u_xlat3;
    let x_413 : vec4<f32> = u_xlat5;
    let x_415 : vec2<f32> = ((-(vec2<f32>(x_407.x, x_407.y)) * vec2<f32>(x_410.x, x_410.y)) + vec2<f32>(x_413.y, x_413.w));
    let x_416 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
    let x_419 : f32 = u_xlat22.x;
    u_xlat7.x = x_419;
    let x_422 : f32 = u_xlat5.x;
    u_xlat7.y = x_422;
    let x_425 : f32 = u_xlat3.x;
    u_xlat7.z = x_425;
    let x_428 : f32 = u_xlat6.x;
    u_xlat7.w = x_428;
    let x_430 : vec4<f32> = u_xlat7;
    u_xlat7 = (x_430 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_436 : f32 = u_xlat22.y;
    u_xlat6.x = x_436;
    let x_439 : f32 = u_xlat5.z;
    u_xlat6.y = x_439;
    let x_442 : f32 = u_xlat3.y;
    u_xlat6.z = x_442;
    let x_444 : vec4<f32> = u_xlat6;
    u_xlat5 = (x_444 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_446 : vec4<f32> = u_xlat7;
    let x_448 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec4<f32>(x_446.y, x_446.w, x_446.y, x_446.w) + vec4<f32>(x_448.x, x_448.z, x_448.x, x_448.z));
    let x_452 : vec4<f32> = u_xlat5;
    let x_454 : vec4<f32> = u_xlat5;
    u_xlat8 = (vec4<f32>(x_452.y, x_452.y, x_452.w, x_452.w) + vec4<f32>(x_454.x, x_454.x, x_454.z, x_454.z));
    let x_457 : vec4<f32> = u_xlat7;
    let x_459 : vec4<f32> = u_xlat6;
    let x_461 : vec2<f32> = (vec2<f32>(x_457.y, x_457.w) / vec2<f32>(x_459.z, x_459.w));
    let x_462 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
    let x_464 : vec4<f32> = u_xlat3;
    let x_468 : vec2<f32> = (vec2<f32>(x_464.x, x_464.y) + vec2<f32>(-1.5f, 0.5f));
    let x_469 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_468.x, x_468.y, x_469.z, x_469.w);
    let x_471 : vec4<f32> = u_xlat5;
    let x_473 : vec4<f32> = u_xlat8;
    u_xlat22 = (vec2<f32>(x_471.y, x_471.w) / vec2<f32>(x_473.y, x_473.w));
    let x_476 : vec2<f32> = u_xlat22;
    u_xlat22 = (x_476 + vec2<f32>(-1.5f, 0.5f));
    let x_478 : vec4<f32> = u_xlat3;
    let x_481 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_483 : vec2<f32> = (vec2<f32>(x_478.x, x_478.y) * vec2<f32>(x_481.x, x_481.x));
    let x_484 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
    let x_486 : vec2<f32> = u_xlat22;
    let x_488 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_490 : vec2<f32> = (x_486 * vec2<f32>(x_488.y, x_488.y));
    let x_491 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_491.x, x_491.y, x_490.x, x_490.y);
    let x_493 : vec4<f32> = u_xlat6;
    let x_494 : vec4<f32> = u_xlat8;
    u_xlat6 = (x_493 * x_494);
    let x_496 : vec4<f32> = u_xlat4;
    let x_499 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_502 : vec4<f32> = u_xlat5;
    u_xlat7 = ((vec4<f32>(x_496.x, x_496.y, x_496.x, x_496.y) * vec4<f32>(x_499.x, x_499.y, x_499.x, x_499.y)) + vec4<f32>(x_502.x, x_502.z, x_502.y, x_502.z));
    let x_506 : vec4<f32> = u_xlat7;
    let x_507 : vec2<f32> = vec2<f32>(x_506.x, x_506.y);
    let x_509 : f32 = u_xlat3.z;
    txVec0 = vec3<f32>(x_507.x, x_507.y, x_509);
    let x_521 : vec3<f32> = txVec0;
    let x_523 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_521.xy, x_521.z);
    u_xlat28 = x_523;
    let x_525 : vec4<f32> = u_xlat7;
    let x_526 : vec2<f32> = vec2<f32>(x_525.z, x_525.w);
    let x_528 : f32 = u_xlat3.z;
    txVec1 = vec3<f32>(x_526.x, x_526.y, x_528);
    let x_535 : vec3<f32> = txVec1;
    let x_537 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_535.xy, x_535.z);
    u_xlat20 = x_537;
    let x_538 : f32 = u_xlat20;
    let x_540 : f32 = u_xlat6.y;
    u_xlat20 = (x_538 * x_540);
    let x_543 : f32 = u_xlat6.x;
    let x_544 : f32 = u_xlat28;
    let x_546 : f32 = u_xlat20;
    u_xlat28 = ((x_543 * x_544) + x_546);
    let x_548 : vec4<f32> = u_xlat4;
    let x_551 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_554 : vec4<f32> = u_xlat5;
    u_xlat4 = ((vec4<f32>(x_548.x, x_548.y, x_548.x, x_548.y) * vec4<f32>(x_551.x, x_551.y, x_551.x, x_551.y)) + vec4<f32>(x_554.x, x_554.w, x_554.y, x_554.w));
    let x_558 : vec4<f32> = u_xlat4;
    let x_559 : vec2<f32> = vec2<f32>(x_558.x, x_558.y);
    let x_561 : f32 = u_xlat3.z;
    txVec2 = vec3<f32>(x_559.x, x_559.y, x_561);
    let x_568 : vec3<f32> = txVec2;
    let x_570 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_568.xy, x_568.z);
    u_xlat20 = x_570;
    let x_572 : f32 = u_xlat6.z;
    let x_573 : f32 = u_xlat20;
    let x_575 : f32 = u_xlat28;
    u_xlat28 = ((x_572 * x_573) + x_575);
    let x_578 : vec4<f32> = u_xlat4;
    let x_579 : vec2<f32> = vec2<f32>(x_578.z, x_578.w);
    let x_581 : f32 = u_xlat3.z;
    txVec3 = vec3<f32>(x_579.x, x_579.y, x_581);
    let x_588 : vec3<f32> = txVec3;
    let x_590 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_588.xy, x_588.z);
    u_xlat20 = x_590;
    let x_592 : f32 = u_xlat6.w;
    let x_593 : f32 = u_xlat20;
    let x_595 : f32 = u_xlat28;
    u_xlat28 = ((x_592 * x_593) + x_595);
    let x_598 : f32 = x_17.x_LightShadowData.x;
    u_xlat20 = (-(x_598) + 1.0f);
    let x_601 : f32 = u_xlat28;
    let x_602 : f32 = u_xlat20;
    let x_605 : f32 = x_17.x_LightShadowData.x;
    u_xlat28 = ((x_601 * x_602) + x_605);
  } else {
    u_xlat28 = 1.0f;
  }
  let x_608 : f32 = u_xlat28;
  u_xlat20 = (-(x_608) + 1.0f);
  let x_612 : f32 = u_xlat0.x;
  let x_613 : f32 = u_xlat20;
  let x_615 : f32 = u_xlat28;
  u_xlat0.x = ((x_612 * x_613) + x_615);
  let x_619 : f32 = u_xlat0.x;
  let x_620 : f32 = u_xlat19;
  u_xlat0.x = (x_619 * x_620);
  let x_623 : vec4<f32> = u_xlat0;
  let x_627 : vec4<f32> = x_17.x_LightColor;
  let x_629 : vec3<f32> = (vec3<f32>(x_623.x, x_623.x, x_623.x) * vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_630 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_637 : vec3<f32> = u_xlat1;
  let x_639 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_637.x, x_637.y));
  let x_640 : vec3<f32> = vec3<f32>(x_639.x, x_639.y, x_639.z);
  let x_641 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_648 : vec3<f32> = u_xlat1;
  let x_650 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_648.x, x_648.y));
  u_xlat5 = x_650;
  let x_656 : vec3<f32> = u_xlat1;
  let x_658 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_656.x, x_656.y));
  u_xlat1 = vec3<f32>(x_658.x, x_658.y, x_658.z);
  let x_660 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_660 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_667 : vec3<f32> = u_xlat1;
  let x_668 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_667, x_668);
  let x_672 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_672);
  let x_675 : vec4<f32> = u_xlat0;
  let x_677 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_675.x, x_675.x, x_675.x) * x_677);
  let x_679 : vec4<f32> = u_xlat2;
  let x_683 : vec3<f32> = x_17.x_WorldSpaceCameraPos;
  let x_685 : vec3<f32> = (vec3<f32>(x_679.x, x_679.y, x_679.w) + -(x_683));
  let x_686 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_688 : vec4<f32> = u_xlat2;
  let x_690 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_688.x, x_688.y, x_688.z), vec3<f32>(x_690.x, x_690.y, x_690.z));
  let x_695 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_695);
  let x_698 : vec4<f32> = u_xlat0;
  let x_700 : vec4<f32> = u_xlat2;
  let x_702 : vec3<f32> = (vec3<f32>(x_698.x, x_698.x, x_698.x) * vec3<f32>(x_700.x, x_700.y, x_700.z));
  let x_703 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat2;
  let x_708 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(-(vec3<f32>(x_705.x, x_705.y, x_705.z)), x_708);
  let x_712 : f32 = u_xlat0.x;
  let x_714 : f32 = u_xlat0.x;
  u_xlat0.x = (x_712 + x_714);
  let x_717 : vec3<f32> = u_xlat1;
  let x_718 : vec4<f32> = u_xlat0;
  let x_722 : vec4<f32> = u_xlat2;
  let x_725 : vec3<f32> = ((x_717 * -(vec3<f32>(x_718.x, x_718.x, x_718.x))) + -(vec3<f32>(x_722.x, x_722.y, x_722.z)));
  let x_726 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec3<f32> = u_xlat1;
  let x_729 : vec3<f32> = u_xlat9;
  u_xlat0.x = dot(x_728, x_729);
  let x_733 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_733, 0.0f, 1.0f);
  let x_736 : vec4<f32> = u_xlat2;
  let x_738 : vec3<f32> = u_xlat9;
  u_xlat9.x = dot(vec3<f32>(x_736.x, x_736.y, x_736.z), x_738);
  let x_742 : f32 = u_xlat9.x;
  let x_744 : f32 = u_xlat9.x;
  u_xlat9.x = (x_742 * x_744);
  let x_748 : f32 = u_xlat9.x;
  let x_750 : f32 = u_xlat9.x;
  u_xlat1.x = (x_748 * x_750);
  let x_754 : f32 = u_xlat5.w;
  u_xlat1.y = (-(x_754) + 1.0f);
  let x_763 : vec3<f32> = u_xlat1;
  let x_765 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_763.x, x_763.y));
  u_xlat9.x = x_765.x;
  let x_769 : f32 = u_xlat9.x;
  u_xlat9.x = (x_769 * 16.0f);
  let x_773 : vec3<f32> = u_xlat9;
  let x_775 : vec4<f32> = u_xlat5;
  let x_778 : vec4<f32> = u_xlat4;
  u_xlat9 = ((vec3<f32>(x_773.x, x_773.x, x_773.x) * vec3<f32>(x_775.x, x_775.y, x_775.z)) + vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat0;
  let x_783 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_781.x, x_781.x, x_781.x) * vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : vec3<f32> = u_xlat9;
  let x_787 : vec3<f32> = u_xlat1;
  let x_788 : vec3<f32> = (x_786 * x_787);
  let x_789 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  u_xlat0.w = 1.0f;
  let x_794 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_794));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

