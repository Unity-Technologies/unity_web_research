struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(9) var sampler_Gradient : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var u_xlatb2 : bool;
  var u_xlat9 : vec3<f32>;
  var x_263 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlatb9 : bool;
  var txVec0 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var txVec1 : vec4<f32>;
  var txVec2 : vec4<f32>;
  var txVec3 : vec4<f32>;
  var u_xlat16 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat8 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_40 : vec3<f32> = vs_TEXCOORD2;
  let x_45 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_46 : vec3<f32> = (-(x_40) + x_45);
  let x_47 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat2;
  let x_52 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_50.x, x_50.y, x_50.z), vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_55 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_55);
  let x_58 : f32 = u_xlat22;
  let x_60 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_58, x_58, x_58) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_65 : f32 = vs_TEXCOORD3;
  u_xlat22 = (x_65 + -1.0f);
  let x_68 : f32 = u_xlat22;
  u_xlat22 = (x_68 * -9.999998093f);
  let x_71 : f32 = u_xlat22;
  u_xlat22 = clamp(x_71, 0.0f, 1.0f);
  let x_76 : f32 = u_xlat22;
  let x_82 : vec2<f32> = vs_TEXCOORD0;
  let x_83 : vec2<f32> = (-(vec2<f32>(x_76, x_76)) + x_82);
  let x_84 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_83.x, x_83.y, x_84.z);
  let x_96 : vec3<f32> = u_xlat4;
  let x_98 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_96.x, x_96.y));
  u_xlat22 = x_98.x;
  let x_106 : vec2<f32> = vs_TEXCOORD0;
  let x_107 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_106);
  u_xlat23 = x_107.z;
  let x_110 : f32 = u_xlat22;
  u_xlat22 = ((x_110 * -2.0f) + 1.0f);
  let x_114 : f32 = u_xlat23;
  let x_116 : f32 = u_xlat22;
  u_xlat22 = (-(x_114) + x_116);
  let x_121 : f32 = u_xlat22;
  u_xlatb22 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb22;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_131 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_131.y, x_131.y, x_131.y) * vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  let x_144 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_139.x, x_139.y, x_139.z) * vec3<f32>(x_141.x, x_141.x, x_141.x)) + x_144);
  let x_148 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_153 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.z, x_150.z, x_150.z)) + x_153);
  let x_155 : vec3<f32> = u_xlat4;
  let x_158 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat4 = (x_155 + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_165 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat5.x = x_165;
  let x_168 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat5.y = x_168;
  let x_172 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat5.z = x_172;
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_174.x, x_174.y, x_174.z), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec3<f32> = vs_TEXCOORD2;
  let x_182 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_185 : vec3<f32> = (x_179 + -(vec3<f32>(x_182.x, x_182.y, x_182.z)));
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
  let x_188 : vec4<f32> = u_xlat2;
  let x_190 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_195 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_195);
  let x_198 : f32 = u_xlat22;
  let x_201 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_198) + x_201);
  let x_206 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_208 : f32 = u_xlat2.x;
  let x_210 : f32 = u_xlat22;
  u_xlat22 = ((x_206 * x_208) + x_210);
  let x_212 : f32 = u_xlat22;
  let x_215 : f32 = x_18.x_LightShadowData.z;
  let x_218 : f32 = x_18.x_LightShadowData.w;
  u_xlat22 = ((x_212 * x_215) + x_218);
  let x_220 : f32 = u_xlat22;
  u_xlat22 = clamp(x_220, 0.0f, 1.0f);
  let x_225 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_225 == 1.0f);
  let x_227 : bool = u_xlatb2;
  if (x_227) {
    let x_231 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb2 = (x_231 == 1.0f);
    let x_234 : vec3<f32> = vs_TEXCOORD2;
    let x_238 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    u_xlat9 = (vec3<f32>(x_234.y, x_234.y, x_234.y) * vec3<f32>(x_238.x, x_238.y, x_238.z));
    let x_242 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_244 : vec3<f32> = vs_TEXCOORD2;
    let x_247 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_242.x, x_242.y, x_242.z) * vec3<f32>(x_244.x, x_244.x, x_244.x)) + x_247);
    let x_250 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_252 : vec3<f32> = vs_TEXCOORD2;
    let x_255 : vec3<f32> = u_xlat9;
    u_xlat9 = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252.z, x_252.z, x_252.z)) + x_255);
    let x_257 : vec3<f32> = u_xlat9;
    let x_259 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    u_xlat9 = (x_257 + vec3<f32>(x_259.x, x_259.y, x_259.z));
    let x_262 : bool = u_xlatb2;
    if (x_262) {
      let x_266 : vec3<f32> = u_xlat9;
      x_263 = x_266;
    } else {
      let x_268 : vec3<f32> = vs_TEXCOORD2;
      x_263 = x_268;
    }
    let x_269 : vec3<f32> = x_263;
    let x_270 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
    let x_272 : vec4<f32> = u_xlat2;
    let x_276 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_278 : vec3<f32> = (vec3<f32>(x_272.x, x_272.y, x_272.z) + -(x_276));
    let x_279 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
    let x_281 : vec4<f32> = u_xlat2;
    let x_285 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_286 : vec3<f32> = (vec3<f32>(x_281.x, x_281.y, x_281.z) * x_285);
    let x_287 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_287.x, x_286.x, x_286.y, x_286.z);
    let x_290 : f32 = u_xlat2.y;
    u_xlat9.x = ((x_290 * 0.25f) + 0.75f);
    let x_298 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_298 * 0.5f) + 0.75f);
    let x_303 : f32 = u_xlat9.x;
    let x_304 : f32 = u_xlat24;
    u_xlat2.x = max(x_303, x_304);
    let x_315 : vec4<f32> = u_xlat2;
    let x_317 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_315.x, x_315.z, x_315.w));
    u_xlat2 = x_317;
  } else {
    u_xlat2.x = 1.0f;
    u_xlat2.y = 1.0f;
    u_xlat2.z = 1.0f;
    u_xlat2.w = 1.0f;
  }
  let x_323 : vec4<f32> = u_xlat2;
  let x_326 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat2.x = dot(x_323, x_326);
  let x_330 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_330, 0.0f, 1.0f);
  let x_334 : f32 = u_xlat22;
  u_xlatb9 = (x_334 < 0.99000001f);
  let x_337 : bool = u_xlatb9;
  if (x_337) {
    let x_340 : vec3<f32> = vs_TEXCOORD2;
    let x_342 : vec4<f32> = x_18.x_LightPositionRange;
    u_xlat9 = (x_340 + -(vec3<f32>(x_342.x, x_342.y, x_342.z)));
    let x_347 : f32 = u_xlat9.y;
    let x_350 : f32 = u_xlat9.x;
    u_xlat24 = max(abs(x_347), abs(x_350));
    let x_354 : f32 = u_xlat9.z;
    let x_356 : f32 = u_xlat24;
    u_xlat24 = max(abs(x_354), x_356);
    let x_358 : f32 = u_xlat24;
    let x_360 : f32 = x_18.x_LightProjectionParams.z;
    u_xlat24 = (x_358 + -(x_360));
    let x_363 : f32 = u_xlat24;
    u_xlat24 = max(x_363, 0.00001f);
    let x_366 : f32 = u_xlat24;
    let x_368 : f32 = x_18.x_LightProjectionParams.w;
    u_xlat24 = (x_366 * x_368);
    let x_371 : f32 = x_18.x_LightProjectionParams.y;
    let x_372 : f32 = u_xlat24;
    u_xlat24 = (x_371 / x_372);
    let x_374 : f32 = u_xlat24;
    let x_376 : f32 = x_18.x_LightProjectionParams.x;
    u_xlat24 = (x_374 + -(x_376));
    let x_379 : f32 = u_xlat24;
    u_xlat24 = (-(x_379) + 1.0f);
    let x_382 : vec3<f32> = u_xlat9;
    let x_385 : vec3<f32> = (x_382 + vec3<f32>(0.0078125f, 0.0078125f, 0.0078125f));
    let x_386 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
    let x_389 : vec4<f32> = u_xlat5;
    let x_390 : vec3<f32> = vec3<f32>(x_389.x, x_389.y, x_389.z);
    let x_391 : f32 = u_xlat24;
    txVec0 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391);
    let x_404 : vec4<f32> = txVec0;
    let x_406 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_404.xyz, x_404.w);
    u_xlat5.x = x_406;
    let x_409 : vec3<f32> = u_xlat9;
    u_xlat6 = (x_409 + vec3<f32>(-0.0078125f, -0.0078125f, 0.0078125f));
    let x_414 : vec3<f32> = u_xlat6;
    let x_415 : f32 = u_xlat24;
    txVec1 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415);
    let x_423 : vec4<f32> = txVec1;
    let x_425 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_423.xyz, x_423.w);
    u_xlat5.y = x_425;
    let x_427 : vec3<f32> = u_xlat9;
    u_xlat6 = (x_427 + vec3<f32>(-0.0078125f, 0.0078125f, -0.0078125f));
    let x_431 : vec3<f32> = u_xlat6;
    let x_432 : f32 = u_xlat24;
    txVec2 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432);
    let x_440 : vec4<f32> = txVec2;
    let x_442 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_440.xyz, x_440.w);
    u_xlat5.z = x_442;
    let x_444 : vec3<f32> = u_xlat9;
    u_xlat9 = (x_444 + vec3<f32>(0.0078125f, -0.0078125f, -0.0078125f));
    let x_448 : vec3<f32> = u_xlat9;
    let x_449 : f32 = u_xlat24;
    txVec3 = vec4<f32>(x_448.x, x_448.y, x_448.z, x_449);
    let x_457 : vec4<f32> = txVec3;
    let x_459 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_457.xyz, x_457.w);
    u_xlat5.w = x_459;
    let x_461 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_461, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    let x_467 : f32 = x_18.x_LightShadowData.x;
    u_xlat16 = (-(x_467) + 1.0f);
    let x_471 : f32 = u_xlat9.x;
    let x_472 : f32 = u_xlat16;
    let x_475 : f32 = x_18.x_LightShadowData.x;
    u_xlat9.x = ((x_471 * x_472) + x_475);
  } else {
    u_xlat9.x = 1.0f;
  }
  let x_481 : f32 = u_xlat9.x;
  let x_484 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_481) + x_484);
  let x_487 : f32 = u_xlat22;
  let x_489 : f32 = u_xlat2.x;
  let x_492 : f32 = u_xlat9.x;
  u_xlat22 = ((x_487 * x_489) + x_492);
  let x_494 : vec3<f32> = u_xlat4;
  let x_495 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(x_494, x_495);
  let x_503 : vec4<f32> = u_xlat2;
  let x_505 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_503.x, x_503.x));
  u_xlat2.x = x_505.x;
  let x_516 : vec3<f32> = u_xlat4;
  let x_517 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_516);
  u_xlat9.x = x_517.w;
  let x_521 : f32 = u_xlat9.x;
  let x_523 : f32 = u_xlat2.x;
  u_xlat2.x = (x_521 * x_523);
  let x_526 : f32 = u_xlat22;
  let x_528 : f32 = u_xlat2.x;
  u_xlat22 = (x_526 * x_528);
  let x_530 : f32 = u_xlat22;
  let x_534 : vec4<f32> = x_18.x_LightColor0;
  let x_536 : vec3<f32> = (vec3<f32>(x_530, x_530, x_530) * vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  let x_540 : vec3<f32> = vs_TEXCOORD1;
  let x_541 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_540, x_541);
  let x_543 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_543);
  let x_545 : f32 = u_xlat22;
  let x_547 : vec3<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_545, x_545, x_545) * x_547);
  let x_551 : vec4<f32> = x_18.x_Color;
  let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_556 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_560 : f32 = x_18.x_Metallic;
  let x_562 : f32 = x_18.x_Metallic;
  let x_564 : f32 = x_18.x_Metallic;
  let x_565 : vec3<f32> = vec3<f32>(x_560, x_562, x_564);
  let x_570 : vec4<f32> = u_xlat5;
  let x_575 : vec3<f32> = ((vec3<f32>(x_565.x, x_565.y, x_565.z) * vec3<f32>(x_570.x, x_570.y, x_570.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_576 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_579 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_579) * 0.959999979f) + 0.959999979f);
  let x_584 : f32 = u_xlat22;
  let x_587 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (vec3<f32>(x_584, x_584, x_584) * vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_592 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_592) + 1.0f);
  let x_595 : vec3<f32> = u_xlat0;
  let x_596 : f32 = u_xlat21;
  let x_599 : vec3<f32> = u_xlat3;
  u_xlat0 = ((x_595 * vec3<f32>(x_596, x_596, x_596)) + x_599);
  let x_601 : vec3<f32> = u_xlat0;
  let x_602 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_601, x_602);
  let x_604 : f32 = u_xlat21;
  u_xlat21 = max(x_604, 0.001f);
  let x_607 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_607);
  let x_609 : f32 = u_xlat21;
  let x_611 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_609, x_609, x_609) * x_611);
  let x_613 : vec3<f32> = u_xlat4;
  let x_614 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_613, x_614);
  let x_616 : vec3<f32> = u_xlat4;
  let x_617 : vec3<f32> = u_xlat1;
  u_xlat23 = dot(x_616, x_617);
  let x_619 : f32 = u_xlat23;
  u_xlat23 = clamp(x_619, 0.0f, 1.0f);
  let x_621 : vec3<f32> = u_xlat4;
  let x_622 : vec3<f32> = u_xlat0;
  u_xlat3.x = dot(x_621, x_622);
  let x_626 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_626, 0.0f, 1.0f);
  let x_629 : vec3<f32> = u_xlat1;
  let x_630 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_629, x_630);
  let x_634 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_634, 0.0f, 1.0f);
  let x_639 : f32 = u_xlat0.x;
  let x_641 : f32 = u_xlat0.x;
  u_xlat7.x = (x_639 * x_641);
  let x_644 : vec3<f32> = u_xlat7;
  let x_646 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_644.x, x_644.x), vec2<f32>(x_646, x_646));
  let x_651 : f32 = u_xlat7.x;
  u_xlat7.x = (x_651 + -0.5f);
  let x_656 : f32 = u_xlat23;
  u_xlat14 = (-(x_656) + 1.0f);
  let x_659 : f32 = u_xlat14;
  let x_660 : f32 = u_xlat14;
  u_xlat1.x = (x_659 * x_660);
  let x_664 : f32 = u_xlat1.x;
  let x_666 : f32 = u_xlat1.x;
  u_xlat1.x = (x_664 * x_666);
  let x_669 : f32 = u_xlat14;
  let x_671 : f32 = u_xlat1.x;
  u_xlat14 = (x_669 * x_671);
  let x_674 : f32 = u_xlat7.x;
  let x_675 : f32 = u_xlat14;
  u_xlat14 = ((x_674 * x_675) + 1.0f);
  let x_678 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_678)) + 1.0f);
  let x_685 : f32 = u_xlat1.x;
  let x_687 : f32 = u_xlat1.x;
  u_xlat8 = (x_685 * x_687);
  let x_689 : f32 = u_xlat8;
  let x_690 : f32 = u_xlat8;
  u_xlat8 = (x_689 * x_690);
  let x_693 : f32 = u_xlat1.x;
  let x_694 : f32 = u_xlat8;
  u_xlat1.x = (x_693 * x_694);
  let x_698 : f32 = u_xlat7.x;
  let x_700 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_698 * x_700) + 1.0f);
  let x_705 : f32 = u_xlat7.x;
  let x_706 : f32 = u_xlat14;
  u_xlat7.x = (x_705 * x_706);
  let x_709 : f32 = u_xlat22;
  let x_710 : f32 = u_xlat22;
  u_xlat14 = (x_709 * x_710);
  let x_712 : f32 = u_xlat14;
  u_xlat14 = max(x_712, 0.002f);
  let x_715 : f32 = u_xlat14;
  u_xlat1.x = (-(x_715) + 1.0f);
  let x_719 : f32 = u_xlat21;
  let x_722 : f32 = u_xlat1.x;
  let x_724 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_719) * x_722) + x_724);
  let x_726 : f32 = u_xlat23;
  let x_728 : f32 = u_xlat1.x;
  let x_730 : f32 = u_xlat14;
  u_xlat1.x = ((x_726 * x_728) + x_730);
  let x_733 : f32 = u_xlat21;
  let x_736 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_733) * x_736);
  let x_738 : f32 = u_xlat23;
  let x_739 : f32 = u_xlat8;
  let x_741 : f32 = u_xlat21;
  u_xlat21 = ((x_738 * x_739) + x_741);
  let x_743 : f32 = u_xlat21;
  u_xlat21 = (x_743 + 0.00001f);
  let x_745 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_745);
  let x_747 : f32 = u_xlat14;
  let x_748 : f32 = u_xlat14;
  u_xlat14 = (x_747 * x_748);
  let x_751 : f32 = u_xlat3.x;
  let x_752 : f32 = u_xlat14;
  let x_755 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_751 * x_752) + -(x_755));
  let x_760 : f32 = u_xlat1.x;
  let x_762 : f32 = u_xlat3.x;
  u_xlat1.x = ((x_760 * x_762) + 1.0f);
  let x_766 : f32 = u_xlat14;
  u_xlat14 = (x_766 * 0.318309873f);
  let x_770 : f32 = u_xlat1.x;
  let x_772 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_770 * x_772) + 0.0000001f);
  let x_777 : f32 = u_xlat14;
  let x_779 : f32 = u_xlat1.x;
  u_xlat14 = (x_777 / x_779);
  let x_781 : f32 = u_xlat14;
  let x_782 : f32 = u_xlat21;
  u_xlat7.y = (x_781 * x_782);
  let x_785 : f32 = u_xlat23;
  let x_787 : vec3<f32> = u_xlat7;
  let x_789 : vec2<f32> = (vec2<f32>(x_785, x_785) * vec2<f32>(x_787.x, x_787.y));
  let x_790 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_789.x, x_789.y, x_790.z);
  let x_793 : f32 = u_xlat7.y;
  u_xlat14 = (x_793 * 3.141592741f);
  let x_796 : f32 = u_xlat14;
  u_xlat14 = max(x_796, 0.0f);
  let x_798 : vec4<f32> = u_xlat5;
  let x_800 : vec4<f32> = u_xlat5;
  u_xlat21 = dot(vec3<f32>(x_798.x, x_798.y, x_798.z), vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_804 : f32 = u_xlat21;
  u_xlatb21 = !((x_804 == 0.0f));
  let x_806 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_806);
  let x_808 : f32 = u_xlat21;
  let x_809 : f32 = u_xlat14;
  u_xlat14 = (x_808 * x_809);
  let x_811 : vec3<f32> = u_xlat7;
  let x_813 : vec4<f32> = u_xlat2;
  u_xlat1 = (vec3<f32>(x_811.x, x_811.x, x_811.x) * vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = u_xlat2;
  let x_818 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_816.x, x_816.y, x_816.z) * vec3<f32>(x_818, x_818, x_818));
  let x_822 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_822) + 1.0f);
  let x_827 : f32 = u_xlat0.x;
  let x_829 : f32 = u_xlat0.x;
  u_xlat22 = (x_827 * x_829);
  let x_831 : f32 = u_xlat22;
  let x_832 : f32 = u_xlat22;
  u_xlat22 = (x_831 * x_832);
  let x_835 : f32 = u_xlat0.x;
  let x_836 : f32 = u_xlat22;
  u_xlat0.x = (x_835 * x_836);
  let x_839 : vec4<f32> = u_xlat5;
  let x_843 : vec3<f32> = (-(vec3<f32>(x_839.x, x_839.y, x_839.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_844 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat2;
  let x_848 : vec3<f32> = u_xlat0;
  let x_851 : vec4<f32> = u_xlat5;
  let x_853 : vec3<f32> = ((vec3<f32>(x_846.x, x_846.y, x_846.z) * vec3<f32>(x_848.x, x_848.x, x_848.x)) + vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec3<f32> = u_xlat7;
  let x_857 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_856 * vec3<f32>(x_857.x, x_857.y, x_857.z));
  let x_862 : vec3<f32> = u_xlat6;
  let x_863 : vec3<f32> = u_xlat1;
  let x_865 : vec3<f32> = u_xlat0;
  let x_866 : vec3<f32> = ((x_862 * x_863) + x_865);
  let x_867 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

