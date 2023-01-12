struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
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
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Metallic : texture_2d<f32>;

@group(0) @binding(10) var sampler_Metallic : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_NormalMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD7 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat17 : vec2<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_252 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat15 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_51);
  u_xlat2 = vec3<f32>(x_52.x, x_52.y, x_52.z);
  let x_60 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : vec4<f32> = textureSample(x_Metallic, sampler_Metallic, x_60);
  let x_62 : vec2<f32> = vec2<f32>(x_61.x, x_61.w);
  let x_63 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_62.x, x_62.y, x_63.z);
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_71);
  u_xlat4 = vec3<f32>(x_72.x, x_72.y, x_72.w);
  let x_77 : f32 = u_xlat4.z;
  let x_80 : f32 = u_xlat4.x;
  u_xlat4.x = (x_77 * x_80);
  let x_83 : vec3<f32> = u_xlat4;
  let x_90 : vec2<f32> = ((vec2<f32>(x_83.x, x_83.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_90.x, x_90.y, x_91.z);
  let x_94 : vec3<f32> = u_xlat4;
  let x_96 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(vec2<f32>(x_94.x, x_94.y), vec2<f32>(x_96.x, x_96.y));
  let x_99 : f32 = u_xlat22;
  u_xlat22 = min(x_99, 1.0f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = (-(x_102) + 1.0f);
  let x_105 : f32 = u_xlat22;
  u_xlat4.z = sqrt(x_105);
  let x_110 : vec3<f32> = vs_TEXCOORD4;
  let x_116 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat17 = (vec2<f32>(x_110.y, x_110.y) * vec2<f32>(x_116.x, x_116.y));
  let x_120 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_122 : vec3<f32> = vs_TEXCOORD4;
  let x_125 : vec2<f32> = u_xlat17;
  u_xlat17 = ((vec2<f32>(x_120.x, x_120.y) * vec2<f32>(x_122.x, x_122.x)) + x_125);
  let x_129 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_131 : vec3<f32> = vs_TEXCOORD4;
  let x_134 : vec2<f32> = u_xlat17;
  u_xlat17 = ((vec2<f32>(x_129.x, x_129.y) * vec2<f32>(x_131.z, x_131.z)) + x_134);
  let x_136 : vec2<f32> = u_xlat17;
  let x_139 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat17 = (x_136 + vec2<f32>(x_139.x, x_139.y));
  let x_147 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat5.x = x_147;
  let x_150 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat5.y = x_150;
  let x_154 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat5.z = x_154;
  let x_156 : vec3<f32> = u_xlat0;
  let x_157 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(x_156, vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_160 : vec3<f32> = vs_TEXCOORD4;
  let x_163 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_166 : vec3<f32> = (x_160 + -(vec3<f32>(x_163.x, x_163.y, x_163.z)));
  let x_167 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_170 : vec4<f32> = u_xlat5;
  let x_172 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_170.x, x_170.y, x_170.z), vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_175);
  let x_177 : f32 = u_xlat22;
  let x_179 : f32 = u_xlat23;
  u_xlat23 = (-(x_177) + x_179);
  let x_183 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_184 : f32 = u_xlat23;
  let x_186 : f32 = u_xlat22;
  u_xlat22 = ((x_183 * x_184) + x_186);
  let x_188 : f32 = u_xlat22;
  let x_191 : f32 = x_18.x_LightShadowData.z;
  let x_194 : f32 = x_18.x_LightShadowData.w;
  u_xlat22 = ((x_188 * x_191) + x_194);
  let x_196 : f32 = u_xlat22;
  u_xlat22 = clamp(x_196, 0.0f, 1.0f);
  let x_204 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_204 == 1.0f);
  let x_206 : bool = u_xlatb23;
  if (x_206) {
    let x_210 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_210 == 1.0f);
    let x_212 : vec3<f32> = vs_TEXCOORD4;
    let x_216 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_218 : vec3<f32> = (vec3<f32>(x_212.y, x_212.y, x_212.y) * vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_222 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_224 : vec3<f32> = vs_TEXCOORD4;
    let x_227 : vec4<f32> = u_xlat5;
    let x_229 : vec3<f32> = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.x, x_224.x, x_224.x)) + vec3<f32>(x_227.x, x_227.y, x_227.z));
    let x_230 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    let x_233 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_235 : vec3<f32> = vs_TEXCOORD4;
    let x_238 : vec4<f32> = u_xlat5;
    let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.z, x_235.z, x_235.z)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
    let x_241 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
    let x_243 : vec4<f32> = u_xlat5;
    let x_246 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_248 : vec3<f32> = (vec3<f32>(x_243.x, x_243.y, x_243.z) + vec3<f32>(x_246.x, x_246.y, x_246.z));
    let x_249 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
    let x_251 : bool = u_xlatb23;
    if (x_251) {
      let x_255 : vec4<f32> = u_xlat5;
      x_252 = vec3<f32>(x_255.x, x_255.y, x_255.z);
    } else {
      let x_258 : vec3<f32> = vs_TEXCOORD4;
      x_252 = x_258;
    }
    let x_259 : vec3<f32> = x_252;
    let x_260 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_262 : vec4<f32> = u_xlat5;
    let x_266 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_268 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) + -(x_266));
    let x_269 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat5;
    let x_275 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_276 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) * x_275);
    let x_277 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_277.x, x_276.x, x_276.y, x_276.z);
    let x_280 : f32 = u_xlat5.y;
    u_xlat23 = ((x_280 * 0.25f) + 0.75f);
    let x_287 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat25 = ((x_287 * 0.5f) + 0.75f);
    let x_291 : f32 = u_xlat23;
    let x_292 : f32 = u_xlat25;
    u_xlat5.x = max(x_291, x_292);
    let x_303 : vec4<f32> = u_xlat5;
    let x_305 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_303.x, x_303.z, x_303.w));
    u_xlat5 = x_305;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_311 : vec4<f32> = u_xlat5;
  let x_313 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_311, x_313);
  let x_315 : f32 = u_xlat23;
  u_xlat23 = clamp(x_315, 0.0f, 1.0f);
  let x_319 : vec4<f32> = vs_TEXCOORD6;
  let x_321 : vec4<f32> = vs_TEXCOORD6;
  let x_323 : vec2<f32> = (vec2<f32>(x_319.x, x_319.y) / vec2<f32>(x_321.w, x_321.w));
  let x_324 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_323.x, x_323.y, x_324.z, x_324.w);
  let x_331 : vec4<f32> = u_xlat5;
  let x_333 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_331.x, x_331.y));
  u_xlat25 = x_333.x;
  let x_335 : f32 = u_xlat23;
  let x_336 : f32 = u_xlat25;
  u_xlat23 = (x_335 + -(x_336));
  let x_339 : f32 = u_xlat22;
  let x_340 : f32 = u_xlat23;
  let x_342 : f32 = u_xlat25;
  u_xlat22 = ((x_339 * x_340) + x_342);
  let x_349 : vec2<f32> = u_xlat17;
  let x_350 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_349);
  u_xlat23 = x_350.w;
  let x_352 : f32 = u_xlat22;
  let x_353 : f32 = u_xlat23;
  u_xlat22 = (x_352 * x_353);
  let x_356 : vec3<f32> = vs_TEXCOORD1;
  let x_357 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_356, x_357);
  let x_361 : vec3<f32> = vs_TEXCOORD2;
  let x_362 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_361, x_362);
  let x_366 : vec3<f32> = vs_TEXCOORD3;
  let x_367 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_366, x_367);
  let x_370 : vec4<f32> = u_xlat5;
  let x_372 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_370.x, x_370.y, x_370.z), vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_375);
  let x_377 : f32 = u_xlat23;
  let x_379 : vec4<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_377, x_377, x_377) * vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : f32 = u_xlat22;
  let x_386 : vec4<f32> = x_18.x_LightColor0;
  let x_388 : vec3<f32> = (vec3<f32>(x_382, x_382, x_382) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : vec3<f32> = u_xlat2;
  u_xlat6 = (x_392 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_396 : vec3<f32> = u_xlat3;
  let x_398 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_396.x, x_396.x, x_396.x) * x_398) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_404 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_404) * 0.959999979f) + 0.959999979f);
  let x_409 : f32 = u_xlat22;
  let x_411 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_409, x_409, x_409) * x_411);
  let x_414 : f32 = u_xlat3.y;
  u_xlat22 = (-(x_414) + 1.0f);
  let x_417 : vec3<f32> = u_xlat0;
  let x_418 : f32 = u_xlat21;
  let x_422 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_417 * vec3<f32>(x_418, x_418, x_418)) + vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : vec3<f32> = u_xlat0;
  let x_426 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_425, x_426);
  let x_428 : f32 = u_xlat21;
  u_xlat21 = max(x_428, 0.001f);
  let x_431 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_431);
  let x_433 : f32 = u_xlat21;
  let x_435 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_433, x_433, x_433) * x_435);
  let x_437 : vec3<f32> = u_xlat4;
  let x_438 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_437, x_438);
  let x_440 : vec3<f32> = u_xlat4;
  let x_442 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_440, vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_447 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_447, 0.0f, 1.0f);
  let x_451 : vec3<f32> = u_xlat4;
  let x_452 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_451, x_452);
  let x_454 : f32 = u_xlat8;
  u_xlat8 = clamp(x_454, 0.0f, 1.0f);
  let x_457 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_459 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_457.x, x_457.y, x_457.z), x_459);
  let x_463 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_463, 0.0f, 1.0f);
  let x_468 : f32 = u_xlat0.x;
  let x_470 : f32 = u_xlat0.x;
  u_xlat7.x = (x_468 * x_470);
  let x_473 : vec3<f32> = u_xlat7;
  let x_475 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_473.x, x_473.x), vec2<f32>(x_475, x_475));
  let x_480 : f32 = u_xlat7.x;
  u_xlat7.x = (x_480 + -0.5f);
  let x_486 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_486) + 1.0f);
  let x_490 : f32 = u_xlat14;
  let x_491 : f32 = u_xlat14;
  u_xlat15 = (x_490 * x_491);
  let x_493 : f32 = u_xlat15;
  let x_494 : f32 = u_xlat15;
  u_xlat15 = (x_493 * x_494);
  let x_496 : f32 = u_xlat14;
  let x_497 : f32 = u_xlat15;
  u_xlat14 = (x_496 * x_497);
  let x_500 : f32 = u_xlat7.x;
  let x_501 : f32 = u_xlat14;
  u_xlat14 = ((x_500 * x_501) + 1.0f);
  let x_504 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_504)) + 1.0f);
  let x_508 : f32 = u_xlat15;
  let x_509 : f32 = u_xlat15;
  u_xlat23 = (x_508 * x_509);
  let x_511 : f32 = u_xlat23;
  let x_512 : f32 = u_xlat23;
  u_xlat23 = (x_511 * x_512);
  let x_514 : f32 = u_xlat15;
  let x_515 : f32 = u_xlat23;
  u_xlat15 = (x_514 * x_515);
  let x_518 : f32 = u_xlat7.x;
  let x_519 : f32 = u_xlat15;
  u_xlat7.x = ((x_518 * x_519) + 1.0f);
  let x_524 : f32 = u_xlat7.x;
  let x_525 : f32 = u_xlat14;
  u_xlat7.x = (x_524 * x_525);
  let x_528 : f32 = u_xlat22;
  let x_529 : f32 = u_xlat22;
  u_xlat14 = (x_528 * x_529);
  let x_531 : f32 = u_xlat14;
  u_xlat14 = max(x_531, 0.002f);
  let x_534 : f32 = u_xlat14;
  u_xlat15 = (-(x_534) + 1.0f);
  let x_537 : f32 = u_xlat21;
  let x_539 : f32 = u_xlat15;
  let x_541 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_537) * x_539) + x_541);
  let x_544 : f32 = u_xlat1.x;
  let x_545 : f32 = u_xlat15;
  let x_547 : f32 = u_xlat14;
  u_xlat15 = ((x_544 * x_545) + x_547);
  let x_549 : f32 = u_xlat21;
  let x_551 : f32 = u_xlat15;
  u_xlat21 = (abs(x_549) * x_551);
  let x_554 : f32 = u_xlat1.x;
  let x_555 : f32 = u_xlat22;
  let x_557 : f32 = u_xlat21;
  u_xlat21 = ((x_554 * x_555) + x_557);
  let x_559 : f32 = u_xlat21;
  u_xlat21 = (x_559 + 0.00001f);
  let x_562 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_562);
  let x_564 : f32 = u_xlat14;
  let x_565 : f32 = u_xlat14;
  u_xlat14 = (x_564 * x_565);
  let x_567 : f32 = u_xlat8;
  let x_568 : f32 = u_xlat14;
  let x_570 : f32 = u_xlat8;
  u_xlat15 = ((x_567 * x_568) + -(x_570));
  let x_573 : f32 = u_xlat15;
  let x_574 : f32 = u_xlat8;
  u_xlat8 = ((x_573 * x_574) + 1.0f);
  let x_577 : f32 = u_xlat14;
  u_xlat14 = (x_577 * 0.318309873f);
  let x_580 : f32 = u_xlat8;
  let x_581 : f32 = u_xlat8;
  u_xlat8 = ((x_580 * x_581) + 0.0000001f);
  let x_585 : f32 = u_xlat14;
  let x_586 : f32 = u_xlat8;
  u_xlat14 = (x_585 / x_586);
  let x_588 : f32 = u_xlat14;
  let x_589 : f32 = u_xlat21;
  u_xlat7.y = (x_588 * x_589);
  let x_592 : vec3<f32> = u_xlat1;
  let x_594 : vec3<f32> = u_xlat7;
  let x_596 : vec2<f32> = (vec2<f32>(x_592.x, x_592.x) * vec2<f32>(x_594.x, x_594.y));
  let x_597 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_596.x, x_596.y, x_597.z);
  let x_600 : f32 = u_xlat7.y;
  u_xlat14 = (x_600 * 3.141592741f);
  let x_603 : f32 = u_xlat14;
  u_xlat14 = max(x_603, 0.0f);
  let x_605 : vec3<f32> = u_xlat6;
  let x_606 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_605, x_606);
  let x_609 : f32 = u_xlat21;
  u_xlatb21 = !((x_609 == 0.0f));
  let x_611 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_611);
  let x_613 : f32 = u_xlat21;
  let x_614 : f32 = u_xlat14;
  u_xlat14 = (x_613 * x_614);
  let x_616 : vec3<f32> = u_xlat7;
  let x_618 : vec4<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_616.x, x_616.x, x_616.x) * vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_621 : vec4<f32> = u_xlat5;
  let x_623 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_621.x, x_621.y, x_621.z) * vec3<f32>(x_623, x_623, x_623));
  let x_627 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_627) + 1.0f);
  let x_632 : f32 = u_xlat0.x;
  let x_634 : f32 = u_xlat0.x;
  u_xlat22 = (x_632 * x_634);
  let x_636 : f32 = u_xlat22;
  let x_637 : f32 = u_xlat22;
  u_xlat22 = (x_636 * x_637);
  let x_640 : f32 = u_xlat0.x;
  let x_641 : f32 = u_xlat22;
  u_xlat0.x = (x_640 * x_641);
  let x_644 : vec3<f32> = u_xlat6;
  u_xlat3 = (-(x_644) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_648 : vec3<f32> = u_xlat3;
  let x_649 : vec3<f32> = u_xlat0;
  let x_652 : vec3<f32> = u_xlat6;
  u_xlat3 = ((x_648 * vec3<f32>(x_649.x, x_649.x, x_649.x)) + x_652);
  let x_654 : vec3<f32> = u_xlat7;
  let x_655 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_654 * x_655);
  let x_657 : vec3<f32> = u_xlat2;
  let x_658 : vec3<f32> = u_xlat1;
  let x_660 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_657 * x_658) + x_660);
  let x_664 : f32 = vs_TEXCOORD7;
  let x_666 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_664 / x_666);
  let x_668 : f32 = u_xlat21;
  u_xlat21 = (-(x_668) + 1.0f);
  let x_671 : f32 = u_xlat21;
  let x_673 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_671 * x_673);
  let x_675 : f32 = u_xlat21;
  u_xlat21 = max(x_675, 0.0f);
  let x_677 : f32 = u_xlat21;
  let x_680 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_677 * x_680);
  let x_682 : f32 = u_xlat21;
  let x_683 : f32 = u_xlat21;
  u_xlat21 = (x_682 * -(x_683));
  let x_686 : f32 = u_xlat21;
  u_xlat21 = exp2(x_686);
  let x_690 : vec3<f32> = u_xlat0;
  let x_691 : f32 = u_xlat21;
  let x_693 : vec3<f32> = (x_690 * vec3<f32>(x_691, x_691, x_691));
  let x_694 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(6) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD7_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

