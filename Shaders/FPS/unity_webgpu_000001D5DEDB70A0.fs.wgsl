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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_17 : PGlobals;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat30 : f32;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_CameraDepthTexture : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

var<private> u_xlatb33 : bool;

var<private> u_xlat33 : f32;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> u_xlatb22 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat25 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

@group(0) @binding(7) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(4) var x_CameraGBufferTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_CameraGBufferTexture0 : sampler;

@group(0) @binding(5) var x_CameraGBufferTexture1 : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraGBufferTexture1 : sampler;

@group(0) @binding(6) var x_CameraGBufferTexture2 : texture_2d<f32>;

@group(0) @binding(14) var sampler_CameraGBufferTexture2 : sampler;

var<private> u_xlat20 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
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
  u_xlat30 = x_64.x;
  let x_68 : f32 = x_17.x_ZBufferParams.x;
  let x_69 : f32 = u_xlat30;
  let x_73 : f32 = x_17.x_ZBufferParams.y;
  u_xlat30 = ((x_68 * x_69) + x_73);
  let x_76 : f32 = u_xlat30;
  u_xlat30 = (1.0f / x_76);
  let x_79 : f32 = u_xlat30;
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = (vec3<f32>(x_79, x_79, x_79) * vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_87 : vec4<f32> = u_xlat2;
  let x_92 : vec4<f32> = x_17.unity_CameraToWorld[1i];
  u_xlat3 = (vec3<f32>(x_87.y, x_87.y, x_87.y) * vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_97 : vec4<f32> = x_17.unity_CameraToWorld[0i];
  let x_99 : vec4<f32> = u_xlat2;
  let x_102 : vec3<f32> = u_xlat3;
  let x_103 : vec3<f32> = ((vec3<f32>(x_97.x, x_97.y, x_97.z) * vec3<f32>(x_99.x, x_99.x, x_99.x)) + x_102);
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_103.x, x_103.y, x_104.z, x_103.z);
  let x_107 : vec4<f32> = x_17.unity_CameraToWorld[2i];
  let x_109 : vec4<f32> = u_xlat2;
  let x_112 : vec4<f32> = u_xlat2;
  let x_114 : vec3<f32> = ((vec3<f32>(x_107.x, x_107.y, x_107.z) * vec3<f32>(x_109.z, x_109.z, x_109.z)) + vec3<f32>(x_112.x, x_112.y, x_112.w));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_115.z, x_114.z);
  let x_117 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = x_17.unity_CameraToWorld[3i];
  let x_122 : vec3<f32> = (vec3<f32>(x_117.x, x_117.y, x_117.w) + vec3<f32>(x_120.x, x_120.y, x_120.z));
  let x_123 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_122.x, x_122.y, x_123.z, x_122.z);
  let x_125 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = x_17.unity_ShadowFadeCenterAndType;
  u_xlat3 = (vec3<f32>(x_125.x, x_125.y, x_125.w) + -(vec3<f32>(x_129.x, x_129.y, x_129.z)));
  let x_133 : vec3<f32> = u_xlat3;
  let x_134 : vec3<f32> = u_xlat3;
  u_xlat0.x = dot(x_133, x_134);
  let x_138 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_138);
  let x_142 : f32 = u_xlat0.z;
  let x_144 : f32 = u_xlat30;
  let x_147 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_142) * x_144) + x_147);
  let x_152 : f32 = x_17.unity_ShadowFadeCenterAndType.w;
  let x_154 : f32 = u_xlat0.x;
  let x_157 : f32 = u_xlat2.z;
  u_xlat0.x = ((x_152 * x_154) + x_157);
  let x_161 : vec4<f32> = u_xlat2;
  let x_166 : vec4<f32> = x_17.x_LightPos;
  u_xlat10 = (-(vec3<f32>(x_161.x, x_161.y, x_161.w)) + vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_170 : vec3<f32> = u_xlat10;
  let x_171 : vec3<f32> = u_xlat10;
  u_xlat21 = dot(x_170, x_171);
  let x_174 : f32 = u_xlat21;
  u_xlat31 = inverseSqrt(x_174);
  let x_176 : vec3<f32> = u_xlat10;
  let x_177 : f32 = u_xlat31;
  u_xlat3 = (x_176 * vec3<f32>(x_177, x_177, x_177));
  let x_181 : vec4<f32> = u_xlat2;
  let x_185 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_187 : vec3<f32> = (vec3<f32>(x_181.y, x_181.y, x_181.y) * vec3<f32>(x_185.x, x_185.y, x_185.w));
  let x_188 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_191 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_193 : vec4<f32> = u_xlat2;
  let x_196 : vec4<f32> = u_xlat4;
  let x_198 : vec3<f32> = ((vec3<f32>(x_191.x, x_191.y, x_191.w) * vec3<f32>(x_193.x, x_193.x, x_193.x)) + vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_202 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_204 : vec4<f32> = u_xlat2;
  let x_207 : vec4<f32> = u_xlat4;
  let x_209 : vec3<f32> = ((vec3<f32>(x_202.x, x_202.y, x_202.w) * vec3<f32>(x_204.w, x_204.w, x_204.w)) + vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec4<f32> = u_xlat4;
  let x_215 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_217 : vec3<f32> = (vec3<f32>(x_212.x, x_212.y, x_212.z) + vec3<f32>(x_215.x, x_215.y, x_215.w));
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat4;
  let x_222 : vec4<f32> = u_xlat4;
  let x_224 : vec2<f32> = (vec2<f32>(x_220.x, x_220.y) / vec2<f32>(x_222.z, x_222.z));
  let x_225 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_224.x, x_224.y, x_225.z, x_225.w);
  let x_233 : vec4<f32> = u_xlat4;
  let x_236 : vec4<f32> = textureSampleBias(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_233.x, x_233.y), -8.0f);
  u_xlat22 = x_236.w;
  let x_242 : f32 = u_xlat4.z;
  u_xlatb33 = (x_242 < 0.0f);
  let x_246 : bool = u_xlatb33;
  u_xlat33 = select(0.0f, 1.0f, x_246);
  let x_248 : f32 = u_xlat22;
  let x_249 : f32 = u_xlat33;
  u_xlat22 = (x_248 * x_249);
  let x_251 : f32 = u_xlat21;
  let x_253 : f32 = x_17.x_LightPos.w;
  u_xlat21 = (x_251 * x_253);
  let x_260 : f32 = u_xlat21;
  let x_262 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_260, x_260));
  u_xlat21 = x_262.x;
  let x_264 : f32 = u_xlat21;
  let x_265 : f32 = u_xlat22;
  u_xlat21 = (x_264 * x_265);
  let x_268 : f32 = u_xlat0.x;
  let x_271 : f32 = x_17.x_LightShadowData.z;
  let x_274 : f32 = x_17.x_LightShadowData.w;
  u_xlat0.x = ((x_268 * x_271) + x_274);
  let x_278 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_278, 0.0f, 1.0f);
  let x_283 : f32 = u_xlat0.x;
  u_xlatb22 = (x_283 < 0.99000001f);
  let x_286 : bool = u_xlatb22;
  if (x_286) {
    let x_289 : vec4<f32> = u_xlat2;
    let x_293 : vec4<f32> = x_17.unity_WorldToShadow[0i][1i];
    u_xlat4 = (vec4<f32>(x_289.y, x_289.y, x_289.y, x_289.y) * x_293);
    let x_296 : vec4<f32> = x_17.unity_WorldToShadow[0i][0i];
    let x_297 : vec4<f32> = u_xlat2;
    let x_300 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_296 * vec4<f32>(x_297.x, x_297.x, x_297.x, x_297.x)) + x_300);
    let x_303 : vec4<f32> = x_17.unity_WorldToShadow[0i][2i];
    let x_304 : vec4<f32> = u_xlat2;
    let x_307 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_303 * vec4<f32>(x_304.w, x_304.w, x_304.w, x_304.w)) + x_307);
    let x_309 : vec4<f32> = u_xlat4;
    let x_311 : vec4<f32> = x_17.unity_WorldToShadow[0i][3i];
    u_xlat4 = (x_309 + x_311);
    let x_313 : vec4<f32> = u_xlat4;
    let x_315 : vec4<f32> = u_xlat4;
    let x_317 : vec3<f32> = (vec3<f32>(x_313.x, x_313.y, x_313.z) / vec3<f32>(x_315.w, x_315.w, x_315.w));
    let x_318 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
    let x_321 : vec4<f32> = u_xlat4;
    let x_325 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_330 : vec2<f32> = ((vec2<f32>(x_321.x, x_321.y) * vec2<f32>(x_325.z, x_325.w)) + vec2<f32>(0.5f, 0.5f));
    let x_331 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_330.x, x_330.y, x_331.z, x_331.w);
    let x_333 : vec4<f32> = u_xlat5;
    let x_335 : vec2<f32> = floor(vec2<f32>(x_333.x, x_333.y));
    let x_336 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_335.x, x_335.y, x_336.z, x_336.w);
    let x_338 : vec4<f32> = u_xlat4;
    let x_341 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_344 : vec4<f32> = u_xlat5;
    let x_347 : vec2<f32> = ((vec2<f32>(x_338.x, x_338.y) * vec2<f32>(x_341.z, x_341.w)) + -(vec2<f32>(x_344.x, x_344.y)));
    let x_348 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_347.x, x_347.y, x_348.z, x_348.w);
    let x_351 : vec4<f32> = u_xlat4;
    u_xlat6 = (vec4<f32>(x_351.x, x_351.x, x_351.y, x_351.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
    let x_356 : vec4<f32> = u_xlat6;
    let x_358 : vec4<f32> = u_xlat6;
    let x_360 : vec2<f32> = (vec2<f32>(x_356.x, x_356.z) * vec2<f32>(x_358.x, x_358.z));
    let x_361 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_360.x, x_361.y, x_361.z, x_360.y);
    let x_365 : vec4<f32> = u_xlat7;
    let x_368 : vec4<f32> = u_xlat4;
    u_xlat25 = ((vec2<f32>(x_365.x, x_365.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_368.x, x_368.y)));
    let x_372 : vec4<f32> = u_xlat4;
    let x_376 : vec2<f32> = (-(vec2<f32>(x_372.x, x_372.y)) + vec2<f32>(1.0f, 1.0f));
    let x_377 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_376.x, x_377.y, x_376.y, x_377.w);
    let x_380 : vec4<f32> = u_xlat4;
    let x_383 : vec2<f32> = min(vec2<f32>(x_380.x, x_380.y), vec2<f32>(0.0f, 0.0f));
    let x_384 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_383.x, x_383.y, x_384.z, x_384.w);
    let x_386 : vec4<f32> = u_xlat8;
    let x_389 : vec4<f32> = u_xlat8;
    let x_392 : vec4<f32> = u_xlat6;
    let x_394 : vec2<f32> = ((-(vec2<f32>(x_386.x, x_386.y)) * vec2<f32>(x_389.x, x_389.y)) + vec2<f32>(x_392.x, x_392.z));
    let x_395 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_394.x, x_395.y, x_394.y, x_395.w);
    let x_397 : vec4<f32> = u_xlat4;
    let x_399 : vec2<f32> = max(vec2<f32>(x_397.x, x_397.y), vec2<f32>(0.0f, 0.0f));
    let x_400 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
    let x_402 : vec4<f32> = u_xlat4;
    let x_405 : vec4<f32> = u_xlat4;
    let x_408 : vec4<f32> = u_xlat6;
    let x_410 : vec2<f32> = ((-(vec2<f32>(x_402.x, x_402.y)) * vec2<f32>(x_405.x, x_405.y)) + vec2<f32>(x_408.y, x_408.w));
    let x_411 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_411.w);
    let x_414 : f32 = u_xlat25.x;
    u_xlat8.x = x_414;
    let x_417 : f32 = u_xlat6.x;
    u_xlat8.y = x_417;
    let x_420 : f32 = u_xlat4.x;
    u_xlat8.z = x_420;
    let x_423 : f32 = u_xlat7.x;
    u_xlat8.w = x_423;
    let x_425 : vec4<f32> = u_xlat8;
    u_xlat8 = (x_425 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_431 : f32 = u_xlat25.y;
    u_xlat7.x = x_431;
    let x_434 : f32 = u_xlat6.z;
    u_xlat7.y = x_434;
    let x_437 : f32 = u_xlat4.y;
    u_xlat7.z = x_437;
    let x_439 : vec4<f32> = u_xlat7;
    u_xlat6 = (x_439 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_441 : vec4<f32> = u_xlat8;
    let x_443 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec4<f32>(x_441.y, x_441.w, x_441.y, x_441.w) + vec4<f32>(x_443.x, x_443.z, x_443.x, x_443.z));
    let x_447 : vec4<f32> = u_xlat6;
    let x_449 : vec4<f32> = u_xlat6;
    u_xlat9 = (vec4<f32>(x_447.y, x_447.y, x_447.w, x_447.w) + vec4<f32>(x_449.x, x_449.x, x_449.z, x_449.z));
    let x_452 : vec4<f32> = u_xlat8;
    let x_454 : vec4<f32> = u_xlat7;
    let x_456 : vec2<f32> = (vec2<f32>(x_452.y, x_452.w) / vec2<f32>(x_454.z, x_454.w));
    let x_457 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_456.x, x_456.y, x_457.z, x_457.w);
    let x_459 : vec4<f32> = u_xlat4;
    let x_463 : vec2<f32> = (vec2<f32>(x_459.x, x_459.y) + vec2<f32>(-1.5f, 0.5f));
    let x_464 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
    let x_466 : vec4<f32> = u_xlat6;
    let x_468 : vec4<f32> = u_xlat9;
    u_xlat25 = (vec2<f32>(x_466.y, x_466.w) / vec2<f32>(x_468.y, x_468.w));
    let x_471 : vec2<f32> = u_xlat25;
    u_xlat25 = (x_471 + vec2<f32>(-1.5f, 0.5f));
    let x_473 : vec4<f32> = u_xlat4;
    let x_476 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_478 : vec2<f32> = (vec2<f32>(x_473.x, x_473.y) * vec2<f32>(x_476.x, x_476.x));
    let x_479 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_478.x, x_478.y, x_479.z, x_479.w);
    let x_481 : vec2<f32> = u_xlat25;
    let x_483 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_485 : vec2<f32> = (x_481 * vec2<f32>(x_483.y, x_483.y));
    let x_486 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_486.x, x_486.y, x_485.x, x_485.y);
    let x_488 : vec4<f32> = u_xlat7;
    let x_489 : vec4<f32> = u_xlat9;
    u_xlat7 = (x_488 * x_489);
    let x_491 : vec4<f32> = u_xlat5;
    let x_494 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_497 : vec4<f32> = u_xlat6;
    u_xlat8 = ((vec4<f32>(x_491.x, x_491.y, x_491.x, x_491.y) * vec4<f32>(x_494.x, x_494.y, x_494.x, x_494.y)) + vec4<f32>(x_497.x, x_497.z, x_497.y, x_497.z));
    let x_502 : vec4<f32> = u_xlat8;
    let x_503 : vec2<f32> = vec2<f32>(x_502.x, x_502.y);
    let x_505 : f32 = u_xlat4.z;
    txVec0 = vec3<f32>(x_503.x, x_503.y, x_505);
    let x_517 : vec3<f32> = txVec0;
    let x_519 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_517.xy, x_517.z);
    u_xlat22 = x_519;
    let x_521 : vec4<f32> = u_xlat8;
    let x_522 : vec2<f32> = vec2<f32>(x_521.z, x_521.w);
    let x_524 : f32 = u_xlat4.z;
    txVec1 = vec3<f32>(x_522.x, x_522.y, x_524);
    let x_531 : vec3<f32> = txVec1;
    let x_533 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_531.xy, x_531.z);
    u_xlat33 = x_533;
    let x_534 : f32 = u_xlat33;
    let x_536 : f32 = u_xlat7.y;
    u_xlat33 = (x_534 * x_536);
    let x_539 : f32 = u_xlat7.x;
    let x_540 : f32 = u_xlat22;
    let x_542 : f32 = u_xlat33;
    u_xlat22 = ((x_539 * x_540) + x_542);
    let x_544 : vec4<f32> = u_xlat5;
    let x_547 : vec4<f32> = x_17.x_ShadowMapTexture_TexelSize;
    let x_550 : vec4<f32> = u_xlat6;
    u_xlat5 = ((vec4<f32>(x_544.x, x_544.y, x_544.x, x_544.y) * vec4<f32>(x_547.x, x_547.y, x_547.x, x_547.y)) + vec4<f32>(x_550.x, x_550.w, x_550.y, x_550.w));
    let x_554 : vec4<f32> = u_xlat5;
    let x_555 : vec2<f32> = vec2<f32>(x_554.x, x_554.y);
    let x_557 : f32 = u_xlat4.z;
    txVec2 = vec3<f32>(x_555.x, x_555.y, x_557);
    let x_564 : vec3<f32> = txVec2;
    let x_566 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_564.xy, x_564.z);
    u_xlat33 = x_566;
    let x_568 : f32 = u_xlat7.z;
    let x_569 : f32 = u_xlat33;
    let x_571 : f32 = u_xlat22;
    u_xlat22 = ((x_568 * x_569) + x_571);
    let x_574 : vec4<f32> = u_xlat5;
    let x_575 : vec2<f32> = vec2<f32>(x_574.z, x_574.w);
    let x_577 : f32 = u_xlat4.z;
    txVec3 = vec3<f32>(x_575.x, x_575.y, x_577);
    let x_584 : vec3<f32> = txVec3;
    let x_586 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_584.xy, x_584.z);
    u_xlat33 = x_586;
    let x_588 : f32 = u_xlat7.w;
    let x_589 : f32 = u_xlat33;
    let x_591 : f32 = u_xlat22;
    u_xlat22 = ((x_588 * x_589) + x_591);
    let x_594 : f32 = x_17.x_LightShadowData.x;
    u_xlat33 = (-(x_594) + 1.0f);
    let x_597 : f32 = u_xlat22;
    let x_598 : f32 = u_xlat33;
    let x_601 : f32 = x_17.x_LightShadowData.x;
    u_xlat22 = ((x_597 * x_598) + x_601);
  } else {
    u_xlat22 = 1.0f;
  }
  let x_604 : f32 = u_xlat22;
  u_xlat33 = (-(x_604) + 1.0f);
  let x_608 : f32 = u_xlat0.x;
  let x_609 : f32 = u_xlat33;
  let x_611 : f32 = u_xlat22;
  u_xlat0.x = ((x_608 * x_609) + x_611);
  let x_615 : f32 = u_xlat0.x;
  let x_616 : f32 = u_xlat21;
  u_xlat0.x = (x_615 * x_616);
  let x_619 : vec4<f32> = u_xlat0;
  let x_623 : vec4<f32> = x_17.x_LightColor;
  let x_625 : vec3<f32> = (vec3<f32>(x_619.x, x_619.x, x_619.x) * vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_633 : vec3<f32> = u_xlat1;
  let x_635 : vec4<f32> = textureSample(x_CameraGBufferTexture0, sampler_CameraGBufferTexture0, vec2<f32>(x_633.x, x_633.y));
  let x_636 : vec3<f32> = vec3<f32>(x_635.x, x_635.y, x_635.z);
  let x_637 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_644 : vec3<f32> = u_xlat1;
  let x_646 : vec4<f32> = textureSample(x_CameraGBufferTexture1, sampler_CameraGBufferTexture1, vec2<f32>(x_644.x, x_644.y));
  u_xlat6 = x_646;
  let x_652 : vec3<f32> = u_xlat1;
  let x_654 : vec4<f32> = textureSample(x_CameraGBufferTexture2, sampler_CameraGBufferTexture2, vec2<f32>(x_652.x, x_652.y));
  u_xlat1 = vec3<f32>(x_654.x, x_654.y, x_654.z);
  let x_656 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_656 * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_663 : vec3<f32> = u_xlat1;
  let x_664 : vec3<f32> = u_xlat1;
  u_xlat0.x = dot(x_663, x_664);
  let x_668 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_668);
  let x_671 : vec4<f32> = u_xlat0;
  let x_673 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_671.x, x_671.x, x_671.x) * x_673);
  let x_675 : vec4<f32> = u_xlat2;
  let x_679 : vec3<f32> = x_17.x_WorldSpaceCameraPos;
  let x_681 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.w) + -(x_679));
  let x_682 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
  let x_684 : vec4<f32> = u_xlat2;
  let x_686 : vec4<f32> = u_xlat2;
  u_xlat0.x = dot(vec3<f32>(x_684.x, x_684.y, x_684.z), vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_691 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_691);
  let x_694 : vec4<f32> = u_xlat0;
  let x_696 : vec4<f32> = u_xlat2;
  let x_698 : vec3<f32> = (vec3<f32>(x_694.x, x_694.x, x_694.x) * vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_699 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
  let x_701 : vec4<f32> = u_xlat6;
  u_xlat7 = (-(vec4<f32>(x_701.w, x_701.x, x_701.y, x_701.z)) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_706 : vec3<f32> = u_xlat10;
  let x_707 : f32 = u_xlat31;
  let x_710 : vec4<f32> = u_xlat2;
  let x_713 : vec3<f32> = ((x_706 * vec3<f32>(x_707, x_707, x_707)) + -(vec3<f32>(x_710.x, x_710.y, x_710.z)));
  let x_714 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_716 : vec4<f32> = u_xlat0;
  let x_718 : vec4<f32> = u_xlat0;
  u_xlat30 = dot(vec3<f32>(x_716.x, x_716.y, x_716.z), vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : f32 = u_xlat30;
  u_xlat30 = max(x_721, 0.001f);
  let x_724 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_724);
  let x_726 : f32 = u_xlat30;
  let x_728 : vec4<f32> = u_xlat0;
  let x_730 : vec3<f32> = (vec3<f32>(x_726, x_726, x_726) * vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : vec3<f32> = u_xlat1;
  let x_734 : vec4<f32> = u_xlat2;
  u_xlat30 = dot(x_733, -(vec3<f32>(x_734.x, x_734.y, x_734.z)));
  let x_738 : vec3<f32> = u_xlat1;
  let x_739 : vec3<f32> = u_xlat3;
  u_xlat31 = dot(x_738, x_739);
  let x_741 : f32 = u_xlat31;
  u_xlat31 = clamp(x_741, 0.0f, 1.0f);
  let x_743 : vec3<f32> = u_xlat1;
  let x_744 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(x_743, vec3<f32>(x_744.x, x_744.y, x_744.z));
  let x_749 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_749, 0.0f, 1.0f);
  let x_752 : vec3<f32> = u_xlat3;
  let x_753 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_752, vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_758 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_758, 0.0f, 1.0f);
  let x_762 : f32 = u_xlat0.x;
  let x_764 : f32 = u_xlat0.x;
  u_xlat10.x = (x_762 * x_764);
  let x_767 : vec3<f32> = u_xlat10;
  let x_769 : vec4<f32> = u_xlat7;
  u_xlat10.x = dot(vec2<f32>(x_767.x, x_767.x), vec2<f32>(x_769.x, x_769.x));
  let x_774 : f32 = u_xlat10.x;
  u_xlat10.x = (x_774 + -0.5f);
  let x_779 : f32 = u_xlat31;
  u_xlat20 = (-(x_779) + 1.0f);
  let x_783 : f32 = u_xlat20;
  let x_784 : f32 = u_xlat20;
  u_xlat11 = (x_783 * x_784);
  let x_786 : f32 = u_xlat11;
  let x_787 : f32 = u_xlat11;
  u_xlat11 = (x_786 * x_787);
  let x_789 : f32 = u_xlat20;
  let x_790 : f32 = u_xlat11;
  u_xlat20 = (x_789 * x_790);
  let x_793 : f32 = u_xlat10.x;
  let x_794 : f32 = u_xlat20;
  u_xlat20 = ((x_793 * x_794) + 1.0f);
  let x_797 : f32 = u_xlat30;
  u_xlat11 = (-(abs(x_797)) + 1.0f);
  let x_801 : f32 = u_xlat11;
  let x_802 : f32 = u_xlat11;
  u_xlat21 = (x_801 * x_802);
  let x_804 : f32 = u_xlat21;
  let x_805 : f32 = u_xlat21;
  u_xlat21 = (x_804 * x_805);
  let x_807 : f32 = u_xlat11;
  let x_808 : f32 = u_xlat21;
  u_xlat11 = (x_807 * x_808);
  let x_811 : f32 = u_xlat10.x;
  let x_812 : f32 = u_xlat11;
  u_xlat10.x = ((x_811 * x_812) + 1.0f);
  let x_817 : f32 = u_xlat10.x;
  let x_818 : f32 = u_xlat20;
  u_xlat10.x = (x_817 * x_818);
  let x_822 : f32 = u_xlat7.x;
  let x_824 : f32 = u_xlat7.x;
  u_xlat20 = (x_822 * x_824);
  let x_826 : f32 = u_xlat20;
  u_xlat20 = max(x_826, 0.002f);
  let x_829 : f32 = u_xlat20;
  u_xlat11 = (-(x_829) + 1.0f);
  let x_832 : f32 = u_xlat30;
  let x_834 : f32 = u_xlat11;
  let x_836 : f32 = u_xlat20;
  u_xlat21 = ((abs(x_832) * x_834) + x_836);
  let x_838 : f32 = u_xlat31;
  let x_839 : f32 = u_xlat11;
  let x_841 : f32 = u_xlat20;
  u_xlat11 = ((x_838 * x_839) + x_841);
  let x_843 : f32 = u_xlat30;
  let x_845 : f32 = u_xlat11;
  u_xlat30 = (abs(x_843) * x_845);
  let x_847 : f32 = u_xlat31;
  let x_848 : f32 = u_xlat21;
  let x_850 : f32 = u_xlat30;
  u_xlat30 = ((x_847 * x_848) + x_850);
  let x_852 : f32 = u_xlat30;
  u_xlat30 = (x_852 + 0.00001f);
  let x_855 : f32 = u_xlat30;
  u_xlat30 = (0.5f / x_855);
  let x_857 : f32 = u_xlat20;
  let x_858 : f32 = u_xlat20;
  u_xlat20 = (x_857 * x_858);
  let x_861 : f32 = u_xlat1.x;
  let x_862 : f32 = u_xlat20;
  let x_865 : f32 = u_xlat1.x;
  u_xlat11 = ((x_861 * x_862) + -(x_865));
  let x_868 : f32 = u_xlat11;
  let x_870 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_868 * x_870) + 1.0f);
  let x_874 : f32 = u_xlat20;
  u_xlat20 = (x_874 * 0.318309873f);
  let x_878 : f32 = u_xlat1.x;
  let x_880 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_878 * x_880) + 0.0000001f);
  let x_885 : f32 = u_xlat20;
  let x_887 : f32 = u_xlat1.x;
  u_xlat20 = (x_885 / x_887);
  let x_889 : f32 = u_xlat20;
  let x_890 : f32 = u_xlat30;
  u_xlat10.y = (x_889 * x_890);
  let x_893 : f32 = u_xlat31;
  let x_895 : vec3<f32> = u_xlat10;
  let x_897 : vec2<f32> = (vec2<f32>(x_893, x_893) * vec2<f32>(x_895.x, x_895.y));
  let x_898 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_897.x, x_897.y, x_898.z);
  let x_901 : f32 = u_xlat10.y;
  u_xlat20 = (x_901 * 3.141592741f);
  let x_904 : f32 = u_xlat20;
  u_xlat20 = max(x_904, 0.0f);
  let x_906 : vec4<f32> = u_xlat6;
  let x_908 : vec4<f32> = u_xlat6;
  u_xlat30 = dot(vec3<f32>(x_906.x, x_906.y, x_906.z), vec3<f32>(x_908.x, x_908.y, x_908.z));
  let x_912 : f32 = u_xlat30;
  u_xlatb30 = !((x_912 == 0.0f));
  let x_914 : bool = u_xlatb30;
  u_xlat30 = select(0.0f, 1.0f, x_914);
  let x_916 : f32 = u_xlat30;
  let x_917 : f32 = u_xlat20;
  u_xlat20 = (x_916 * x_917);
  let x_919 : vec3<f32> = u_xlat10;
  let x_921 : vec4<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_919.x, x_919.x, x_919.x) * vec3<f32>(x_921.x, x_921.y, x_921.z));
  let x_924 : vec4<f32> = u_xlat4;
  let x_926 : f32 = u_xlat20;
  u_xlat10 = (vec3<f32>(x_924.x, x_924.y, x_924.z) * vec3<f32>(x_926, x_926, x_926));
  let x_930 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_930) + 1.0f);
  let x_935 : f32 = u_xlat0.x;
  let x_937 : f32 = u_xlat0.x;
  u_xlat31 = (x_935 * x_937);
  let x_939 : f32 = u_xlat31;
  let x_940 : f32 = u_xlat31;
  u_xlat31 = (x_939 * x_940);
  let x_943 : f32 = u_xlat0.x;
  let x_944 : f32 = u_xlat31;
  u_xlat0.x = (x_943 * x_944);
  let x_947 : vec4<f32> = u_xlat7;
  let x_949 : vec4<f32> = u_xlat0;
  let x_952 : vec4<f32> = u_xlat6;
  let x_954 : vec3<f32> = ((vec3<f32>(x_947.y, x_947.z, x_947.w) * vec3<f32>(x_949.x, x_949.x, x_949.x)) + vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_955 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
  let x_957 : vec3<f32> = u_xlat10;
  let x_958 : vec4<f32> = u_xlat2;
  let x_960 : vec3<f32> = (x_957 * vec3<f32>(x_958.x, x_958.y, x_958.z));
  let x_961 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_963 : vec4<f32> = u_xlat5;
  let x_965 : vec3<f32> = u_xlat1;
  let x_967 : vec4<f32> = u_xlat0;
  let x_969 : vec3<f32> = ((vec3<f32>(x_963.x, x_963.y, x_963.z) * x_965) + vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_970 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
  u_xlat0.w = 1.0f;
  let x_975 : vec4<f32> = u_xlat0;
  SV_Target0 = exp2(-(x_975));
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

