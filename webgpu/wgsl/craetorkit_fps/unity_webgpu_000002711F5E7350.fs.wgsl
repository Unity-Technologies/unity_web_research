type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_WorldToShadow : Arr,
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
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_36 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var x_263 : vec3<f32>;
  var u_xlat23 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat9 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_41 : vec4<f32> = x_36.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_41.x, x_41.y, x_41.z));
  let x_45 : vec4<f32> = x_36.x_Color;
  let x_47 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * x_47) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_55 : f32 = x_36.x_Metallic;
  let x_57 : f32 = x_36.x_Metallic;
  let x_59 : f32 = x_36.x_Metallic;
  let x_60 : vec3<f32> = vec3<f32>(x_55, x_57, x_59);
  let x_65 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_60.x, x_60.y, x_60.z) * x_65) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_73 : f32 = x_36.x_Metallic;
  u_xlat21 = ((-(x_73) * 0.959999979f) + 0.959999979f);
  let x_78 : f32 = u_xlat21;
  let x_80 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_78, x_78, x_78) * x_80);
  let x_83 : vec4<f32> = vs_TEXCOORD4;
  let x_85 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_83.x, x_83.y, x_83.z), vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_88 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_88);
  let x_92 : f32 = u_xlat21;
  let x_94 : vec4<f32> = vs_TEXCOORD4;
  let x_96 : vec3<f32> = (vec3<f32>(x_92, x_92, x_92) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_100 : vec4<f32> = vs_TEXCOORD1;
  let x_102 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_100.x, x_100.y, x_100.z), vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_105);
  let x_108 : f32 = u_xlat21;
  let x_110 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_108, x_108, x_108) * vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_116 : vec3<f32> = vs_TEXCOORD5;
  let x_121 : vec4<f32> = x_36.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_116.y, x_116.y, x_116.y, x_116.y) * x_121);
  let x_125 : vec4<f32> = x_36.unity_WorldToLight[0i];
  let x_126 : vec3<f32> = vs_TEXCOORD5;
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_125 * vec4<f32>(x_126.x, x_126.x, x_126.x, x_126.x)) + x_129);
  let x_133 : vec4<f32> = x_36.unity_WorldToLight[2i];
  let x_134 : vec3<f32> = vs_TEXCOORD5;
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_133 * vec4<f32>(x_134.z, x_134.z, x_134.z, x_134.z)) + x_137);
  let x_139 : vec4<f32> = u_xlat4;
  let x_142 : vec4<f32> = x_36.unity_WorldToLight[3i];
  u_xlat4 = (x_139 + x_142);
  let x_145 : vec3<f32> = vs_TEXCOORD5;
  let x_149 : vec3<f32> = x_36.x_WorldSpaceCameraPos;
  let x_150 : vec3<f32> = (-(x_145) + x_149);
  let x_151 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_157 : f32 = x_36.unity_MatrixV[0i].z;
  u_xlat6.x = x_157;
  let x_161 : f32 = x_36.unity_MatrixV[1i].z;
  u_xlat6.y = x_161;
  let x_165 : f32 = x_36.unity_MatrixV[2i].z;
  u_xlat6.z = x_165;
  let x_167 : vec4<f32> = u_xlat5;
  let x_169 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_167.x, x_167.y, x_167.z), x_169);
  let x_171 : vec3<f32> = vs_TEXCOORD5;
  let x_174 : vec4<f32> = x_36.unity_ShadowFadeCenterAndType;
  let x_177 : vec3<f32> = (x_171 + -(vec3<f32>(x_174.x, x_174.y, x_174.z)));
  let x_178 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : vec4<f32> = u_xlat5;
  let x_183 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_181.x, x_181.y, x_181.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_186 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_186);
  let x_188 : f32 = u_xlat21;
  let x_190 : f32 = u_xlat22;
  u_xlat22 = (-(x_188) + x_190);
  let x_194 : f32 = x_36.unity_ShadowFadeCenterAndType.w;
  let x_195 : f32 = u_xlat22;
  let x_197 : f32 = u_xlat21;
  u_xlat21 = ((x_194 * x_195) + x_197);
  let x_199 : f32 = u_xlat21;
  let x_201 : f32 = x_36.x_LightShadowData.z;
  let x_204 : f32 = x_36.x_LightShadowData.w;
  u_xlat21 = ((x_199 * x_201) + x_204);
  let x_206 : f32 = u_xlat21;
  u_xlat21 = clamp(x_206, 0.0f, 1.0f);
  let x_215 : f32 = x_36.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_215 == 1.0f);
  let x_217 : bool = u_xlatb22;
  if (x_217) {
    let x_221 : f32 = x_36.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_221 == 1.0f);
    let x_223 : vec3<f32> = vs_TEXCOORD5;
    let x_227 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[1i];
    let x_229 : vec3<f32> = (vec3<f32>(x_223.y, x_223.y, x_223.y) * vec3<f32>(x_227.x, x_227.y, x_227.z));
    let x_230 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    let x_233 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[0i];
    let x_235 : vec3<f32> = vs_TEXCOORD5;
    let x_238 : vec4<f32> = u_xlat5;
    let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
    let x_241 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
    let x_244 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[2i];
    let x_246 : vec3<f32> = vs_TEXCOORD5;
    let x_249 : vec4<f32> = u_xlat5;
    let x_251 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(x_246.z, x_246.z, x_246.z)) + vec3<f32>(x_249.x, x_249.y, x_249.z));
    let x_252 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_254 : vec4<f32> = u_xlat5;
    let x_257 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[3i];
    let x_259 : vec3<f32> = (vec3<f32>(x_254.x, x_254.y, x_254.z) + vec3<f32>(x_257.x, x_257.y, x_257.z));
    let x_260 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_262 : bool = u_xlatb22;
    if (x_262) {
      let x_266 : vec4<f32> = u_xlat5;
      x_263 = vec3<f32>(x_266.x, x_266.y, x_266.z);
    } else {
      let x_269 : vec3<f32> = vs_TEXCOORD5;
      x_263 = x_269;
    }
    let x_270 : vec3<f32> = x_263;
    let x_271 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
    let x_273 : vec4<f32> = u_xlat5;
    let x_277 : vec3<f32> = x_36.unity_ProbeVolumeMin;
    let x_279 : vec3<f32> = (vec3<f32>(x_273.x, x_273.y, x_273.z) + -(x_277));
    let x_280 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
    let x_282 : vec4<f32> = u_xlat5;
    let x_286 : vec3<f32> = x_36.unity_ProbeVolumeSizeInv;
    let x_287 : vec3<f32> = (vec3<f32>(x_282.x, x_282.y, x_282.z) * x_286);
    let x_288 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_288.x, x_287.x, x_287.y, x_287.z);
    let x_291 : f32 = u_xlat5.y;
    u_xlat22 = ((x_291 * 0.25f) + 0.75f);
    let x_298 : f32 = x_36.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_298 * 0.5f) + 0.75f);
    let x_302 : f32 = u_xlat22;
    let x_303 : f32 = u_xlat23;
    u_xlat5.x = max(x_302, x_303);
    let x_314 : vec4<f32> = u_xlat5;
    let x_316 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_314.x, x_314.z, x_314.w));
    u_xlat5 = x_316;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_322 : vec4<f32> = u_xlat5;
  let x_324 : vec4<f32> = x_36.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_322, x_324);
  let x_326 : f32 = u_xlat22;
  u_xlat22 = clamp(x_326, 0.0f, 1.0f);
  let x_328 : vec3<f32> = vs_TEXCOORD5;
  let x_331 : vec4<f32> = x_36.unity_WorldToShadow[0i][1i];
  u_xlat5 = (vec4<f32>(x_328.y, x_328.y, x_328.y, x_328.y) * x_331);
  let x_334 : vec4<f32> = x_36.unity_WorldToShadow[0i][0i];
  let x_335 : vec3<f32> = vs_TEXCOORD5;
  let x_338 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_334 * vec4<f32>(x_335.x, x_335.x, x_335.x, x_335.x)) + x_338);
  let x_341 : vec4<f32> = x_36.unity_WorldToShadow[0i][2i];
  let x_342 : vec3<f32> = vs_TEXCOORD5;
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_341 * vec4<f32>(x_342.z, x_342.z, x_342.z, x_342.z)) + x_345);
  let x_347 : vec4<f32> = u_xlat5;
  let x_349 : vec4<f32> = x_36.unity_WorldToShadow[0i][3i];
  u_xlat5 = (x_347 + x_349);
  let x_351 : vec4<f32> = u_xlat5;
  let x_353 : vec4<f32> = u_xlat5;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) / vec3<f32>(x_353.w, x_353.w, x_353.w));
  let x_356 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_359 : vec4<f32> = u_xlat5;
  let x_360 : vec2<f32> = vec2<f32>(x_359.x, x_359.y);
  let x_362 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_360.x, x_360.y, x_362);
  let x_374 : vec3<f32> = txVec0;
  let x_376 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_374.xy, x_374.z);
  u_xlat23 = x_376;
  let x_379 : f32 = x_36.x_LightShadowData.x;
  u_xlat24 = (-(x_379) + 1.0f);
  let x_382 : f32 = u_xlat23;
  let x_383 : f32 = u_xlat24;
  let x_386 : f32 = x_36.x_LightShadowData.x;
  u_xlat23 = ((x_382 * x_383) + x_386);
  let x_388 : f32 = u_xlat22;
  let x_389 : f32 = u_xlat23;
  u_xlat22 = (x_388 + -(x_389));
  let x_392 : f32 = u_xlat21;
  let x_393 : f32 = u_xlat22;
  let x_395 : f32 = u_xlat23;
  u_xlat21 = ((x_392 * x_393) + x_395);
  let x_398 : f32 = u_xlat4.z;
  u_xlatb22 = (0.0f < x_398);
  let x_400 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_400);
  let x_402 : vec4<f32> = u_xlat4;
  let x_404 : vec4<f32> = u_xlat4;
  let x_406 : vec2<f32> = (vec2<f32>(x_402.x, x_402.y) / vec2<f32>(x_404.w, x_404.w));
  let x_407 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat5;
  let x_412 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) + vec2<f32>(0.5f, 0.5f));
  let x_413 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_412.x, x_412.y, x_413.z, x_413.w);
  let x_420 : vec4<f32> = u_xlat5;
  let x_422 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_420.x, x_420.y));
  u_xlat23 = x_422.w;
  let x_424 : f32 = u_xlat22;
  let x_425 : f32 = u_xlat23;
  u_xlat22 = (x_424 * x_425);
  let x_427 : vec4<f32> = u_xlat4;
  let x_429 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_427.x, x_427.y, x_427.z), vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_437 : f32 = u_xlat23;
  let x_439 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_437, x_437));
  u_xlat23 = x_439.x;
  let x_441 : f32 = u_xlat22;
  let x_442 : f32 = u_xlat23;
  u_xlat22 = (x_441 * x_442);
  let x_444 : f32 = u_xlat21;
  let x_445 : f32 = u_xlat22;
  u_xlat21 = (x_444 * x_445);
  let x_450 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_450;
  let x_454 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_454;
  let x_457 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_457;
  let x_459 : vec4<f32> = u_xlat4;
  let x_461 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_459.x, x_459.y, x_459.z), vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_464);
  let x_466 : f32 = u_xlat22;
  let x_468 : vec4<f32> = u_xlat4;
  let x_470 : vec3<f32> = (vec3<f32>(x_466, x_466, x_466) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_473 : f32 = u_xlat21;
  let x_477 : vec4<f32> = x_36.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_473, x_473, x_473) * vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_482 : f32 = x_36.x_Glossiness;
  u_xlat21 = (-(x_482) + 1.0f);
  let x_485 : vec4<f32> = u_xlat4;
  let x_487 : f32 = u_xlat22;
  let x_490 : vec3<f32> = u_xlat3;
  let x_492 : vec3<f32> = ((vec3<f32>(x_485.x, x_485.y, x_485.z) * vec3<f32>(x_487, x_487, x_487)) + -(x_490));
  let x_493 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_495 : vec4<f32> = u_xlat4;
  let x_497 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_495.x, x_495.y, x_495.z), vec3<f32>(x_497.x, x_497.y, x_497.z));
  let x_500 : f32 = u_xlat22;
  u_xlat22 = max(x_500, 0.001f);
  let x_503 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_503);
  let x_505 : f32 = u_xlat22;
  let x_507 : vec4<f32> = u_xlat4;
  let x_509 : vec3<f32> = (vec3<f32>(x_505, x_505, x_505) * vec3<f32>(x_507.x, x_507.y, x_507.z));
  let x_510 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
  let x_512 : vec4<f32> = u_xlat2;
  let x_514 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_512.x, x_512.y, x_512.z), -(x_514));
  let x_517 : vec4<f32> = u_xlat2;
  let x_519 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_517.x, x_517.y, x_517.z), vec3<f32>(x_519.x, x_519.y, x_519.z));
  let x_522 : f32 = u_xlat23;
  u_xlat23 = clamp(x_522, 0.0f, 1.0f);
  let x_524 : vec4<f32> = u_xlat2;
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_524.x, x_524.y, x_524.z), vec3<f32>(x_526.x, x_526.y, x_526.z));
  let x_531 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_531, 0.0f, 1.0f);
  let x_535 : vec4<f32> = u_xlat5;
  let x_537 : vec4<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_535.x, x_535.y, x_535.z), vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : f32 = u_xlat9;
  u_xlat9 = clamp(x_540, 0.0f, 1.0f);
  let x_543 : f32 = u_xlat9;
  let x_544 : f32 = u_xlat9;
  u_xlat16 = (x_543 * x_544);
  let x_546 : f32 = u_xlat16;
  let x_548 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_546, x_546), vec2<f32>(x_548, x_548));
  let x_551 : f32 = u_xlat16;
  u_xlat16 = (x_551 + -0.5f);
  let x_554 : f32 = u_xlat23;
  u_xlat3.x = (-(x_554) + 1.0f);
  let x_560 : f32 = u_xlat3.x;
  let x_562 : f32 = u_xlat3.x;
  u_xlat10 = (x_560 * x_562);
  let x_564 : f32 = u_xlat10;
  let x_565 : f32 = u_xlat10;
  u_xlat10 = (x_564 * x_565);
  let x_568 : f32 = u_xlat3.x;
  let x_569 : f32 = u_xlat10;
  u_xlat3.x = (x_568 * x_569);
  let x_572 : f32 = u_xlat16;
  let x_574 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_572 * x_574) + 1.0f);
  let x_578 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_578)) + 1.0f);
  let x_583 : f32 = u_xlat10;
  let x_584 : f32 = u_xlat10;
  u_xlat17 = (x_583 * x_584);
  let x_586 : f32 = u_xlat17;
  let x_587 : f32 = u_xlat17;
  u_xlat17 = (x_586 * x_587);
  let x_589 : f32 = u_xlat10;
  let x_590 : f32 = u_xlat17;
  u_xlat10 = (x_589 * x_590);
  let x_592 : f32 = u_xlat16;
  let x_593 : f32 = u_xlat10;
  u_xlat16 = ((x_592 * x_593) + 1.0f);
  let x_596 : f32 = u_xlat16;
  let x_598 : f32 = u_xlat3.x;
  u_xlat16 = (x_596 * x_598);
  let x_600 : f32 = u_xlat23;
  let x_601 : f32 = u_xlat16;
  u_xlat16 = (x_600 * x_601);
  let x_603 : f32 = u_xlat21;
  let x_604 : f32 = u_xlat21;
  u_xlat21 = (x_603 * x_604);
  let x_606 : f32 = u_xlat21;
  u_xlat21 = max(x_606, 0.002f);
  let x_609 : f32 = u_xlat21;
  u_xlat3.x = (-(x_609) + 1.0f);
  let x_613 : f32 = u_xlat22;
  let x_616 : f32 = u_xlat3.x;
  let x_618 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_613) * x_616) + x_618);
  let x_620 : f32 = u_xlat23;
  let x_622 : f32 = u_xlat3.x;
  let x_624 : f32 = u_xlat21;
  u_xlat3.x = ((x_620 * x_622) + x_624);
  let x_627 : f32 = u_xlat22;
  let x_630 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_627) * x_630);
  let x_632 : f32 = u_xlat23;
  let x_633 : f32 = u_xlat10;
  let x_635 : f32 = u_xlat22;
  u_xlat22 = ((x_632 * x_633) + x_635);
  let x_637 : f32 = u_xlat22;
  u_xlat22 = (x_637 + 0.00001f);
  let x_640 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_640);
  let x_642 : f32 = u_xlat21;
  let x_643 : f32 = u_xlat21;
  u_xlat21 = (x_642 * x_643);
  let x_646 : f32 = u_xlat2.x;
  let x_647 : f32 = u_xlat21;
  let x_650 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_646 * x_647) + -(x_650));
  let x_655 : f32 = u_xlat3.x;
  let x_657 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_655 * x_657) + 1.0f);
  let x_661 : f32 = u_xlat21;
  u_xlat21 = (x_661 * 0.318309873f);
  let x_665 : f32 = u_xlat2.x;
  let x_667 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_665 * x_667) + 0.0000001f);
  let x_672 : f32 = u_xlat21;
  let x_674 : f32 = u_xlat2.x;
  u_xlat21 = (x_672 / x_674);
  let x_676 : f32 = u_xlat21;
  let x_677 : f32 = u_xlat22;
  u_xlat21 = (x_676 * x_677);
  let x_679 : f32 = u_xlat23;
  let x_680 : f32 = u_xlat21;
  u_xlat21 = (x_679 * x_680);
  let x_682 : f32 = u_xlat21;
  u_xlat21 = (x_682 * 3.141592741f);
  let x_685 : f32 = u_xlat21;
  u_xlat21 = max(x_685, 0.0f);
  let x_687 : vec3<f32> = u_xlat0;
  let x_688 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_687, x_688);
  let x_690 : f32 = u_xlat22;
  u_xlatb22 = !((x_690 == 0.0f));
  let x_692 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_692);
  let x_694 : f32 = u_xlat21;
  let x_695 : f32 = u_xlat22;
  u_xlat21 = (x_694 * x_695);
  let x_697 : f32 = u_xlat16;
  let x_699 : vec3<f32> = u_xlat6;
  let x_700 : vec3<f32> = (vec3<f32>(x_697, x_697, x_697) * x_699);
  let x_701 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_700.x, x_701.y, x_700.y, x_700.z);
  let x_703 : vec3<f32> = u_xlat6;
  let x_704 : f32 = u_xlat21;
  u_xlat3 = (x_703 * vec3<f32>(x_704, x_704, x_704));
  let x_707 : f32 = u_xlat9;
  u_xlat21 = (-(x_707) + 1.0f);
  let x_710 : f32 = u_xlat21;
  let x_711 : f32 = u_xlat21;
  u_xlat22 = (x_710 * x_711);
  let x_713 : f32 = u_xlat22;
  let x_714 : f32 = u_xlat22;
  u_xlat22 = (x_713 * x_714);
  let x_716 : f32 = u_xlat21;
  let x_717 : f32 = u_xlat22;
  u_xlat21 = (x_716 * x_717);
  let x_719 : vec3<f32> = u_xlat0;
  let x_722 : vec3<f32> = (-(x_719) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_723 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat4;
  let x_727 : f32 = u_xlat21;
  let x_730 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(x_727, x_727, x_727)) + x_730);
  let x_732 : vec3<f32> = u_xlat0;
  let x_733 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_732 * x_733);
  let x_737 : vec3<f32> = u_xlat1;
  let x_738 : vec4<f32> = u_xlat2;
  let x_741 : vec3<f32> = u_xlat0;
  let x_742 : vec3<f32> = ((x_737 * vec3<f32>(x_738.x, x_738.z, x_738.w)) + x_741);
  let x_743 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

