struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
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
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(4)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlatb23 : bool;
  var x_352 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat18 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat21;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_86 : vec4<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_86.x, x_86.y));
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_95 : f32 = u_xlat2.z;
  let x_98 : f32 = u_xlat2.x;
  u_xlat2.x = (x_95 * x_98);
  let x_101 : vec4<f32> = u_xlat2;
  let x_108 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat2;
  let x_115 : f32 = x_33.x_BumpScale;
  let x_117 : vec2<f32> = (vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115, x_115));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec2<f32>(x_120.x, x_120.y), vec2<f32>(x_122.x, x_122.y));
  let x_125 : f32 = u_xlat21;
  u_xlat21 = min(x_125, 1.0f);
  let x_128 : f32 = u_xlat21;
  u_xlat21 = (-(x_128) + 1.0f);
  let x_131 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_131);
  let x_134 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_134.y, x_134.y, x_134.y) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : vec4<f32> = vs_TEXCOORD2;
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec3<f32> = u_xlat9;
  let x_147 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = vs_TEXCOORD4;
  let x_153 : f32 = u_xlat21;
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153, x_153, x_153)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_166);
  let x_168 : f32 = u_xlat21;
  let x_170 : vec4<f32> = u_xlat2;
  let x_172 : vec3<f32> = (vec3<f32>(x_168, x_168, x_168) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec4<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_181);
  let x_184 : f32 = u_xlat21;
  let x_186 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_192 : vec3<f32> = vs_TEXCOORD5;
  let x_197 : vec4<f32> = x_33.unity_WorldToLight[1i];
  let x_199 : vec2<f32> = (vec2<f32>(x_192.y, x_192.y) * vec2<f32>(x_197.x, x_197.y));
  let x_200 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_199.x, x_199.y, x_200.z);
  let x_204 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_206 : vec3<f32> = vs_TEXCOORD5;
  let x_209 : vec3<f32> = u_xlat4;
  let x_211 : vec2<f32> = ((vec2<f32>(x_204.x, x_204.y) * vec2<f32>(x_206.x, x_206.x)) + vec2<f32>(x_209.x, x_209.y));
  let x_212 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_211.x, x_211.y, x_212.z);
  let x_216 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_218 : vec3<f32> = vs_TEXCOORD5;
  let x_221 : vec3<f32> = u_xlat4;
  let x_223 : vec2<f32> = ((vec2<f32>(x_216.x, x_216.y) * vec2<f32>(x_218.z, x_218.z)) + vec2<f32>(x_221.x, x_221.y));
  let x_224 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_223.x, x_223.y, x_224.z);
  let x_226 : vec3<f32> = u_xlat4;
  let x_230 : vec4<f32> = x_33.unity_WorldToLight[3i];
  let x_232 : vec2<f32> = (vec2<f32>(x_226.x, x_226.y) + vec2<f32>(x_230.x, x_230.y));
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_232.x, x_232.y, x_233.z);
  let x_236 : vec3<f32> = vs_TEXCOORD5;
  let x_240 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_241 : vec3<f32> = (-(x_236) + x_240);
  let x_242 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_247 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_247;
  let x_250 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_250;
  let x_254 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_254;
  let x_257 : vec4<f32> = u_xlat5;
  let x_259 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(vec3<f32>(x_257.x, x_257.y, x_257.z), x_259);
  let x_261 : vec3<f32> = vs_TEXCOORD5;
  let x_264 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_267 : vec3<f32> = (x_261 + -(vec3<f32>(x_264.x, x_264.y, x_264.z)));
  let x_268 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_271 : vec4<f32> = u_xlat5;
  let x_273 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_271.x, x_271.y, x_271.z), vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_276);
  let x_278 : f32 = u_xlat22;
  let x_280 : f32 = u_xlat23;
  u_xlat23 = (-(x_278) + x_280);
  let x_284 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_285 : f32 = u_xlat23;
  let x_287 : f32 = u_xlat22;
  u_xlat22 = ((x_284 * x_285) + x_287);
  let x_289 : f32 = u_xlat22;
  let x_291 : f32 = x_33.x_LightShadowData.z;
  let x_294 : f32 = x_33.x_LightShadowData.w;
  u_xlat22 = ((x_289 * x_291) + x_294);
  let x_296 : f32 = u_xlat22;
  u_xlat22 = clamp(x_296, 0.0f, 1.0f);
  let x_304 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_304 == 1.0f);
  let x_306 : bool = u_xlatb23;
  if (x_306) {
    let x_310 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_310 == 1.0f);
    let x_312 : vec3<f32> = vs_TEXCOORD5;
    let x_316 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_318 : vec3<f32> = (vec3<f32>(x_312.y, x_312.y, x_312.y) * vec3<f32>(x_316.x, x_316.y, x_316.z));
    let x_319 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
    let x_322 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_324 : vec3<f32> = vs_TEXCOORD5;
    let x_327 : vec4<f32> = u_xlat5;
    let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.x, x_324.x, x_324.x)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
    let x_330 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
    let x_333 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_335 : vec3<f32> = vs_TEXCOORD5;
    let x_338 : vec4<f32> = u_xlat5;
    let x_340 : vec3<f32> = ((vec3<f32>(x_333.x, x_333.y, x_333.z) * vec3<f32>(x_335.z, x_335.z, x_335.z)) + vec3<f32>(x_338.x, x_338.y, x_338.z));
    let x_341 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
    let x_343 : vec4<f32> = u_xlat5;
    let x_346 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_348 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) + vec3<f32>(x_346.x, x_346.y, x_346.z));
    let x_349 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
    let x_351 : bool = u_xlatb23;
    if (x_351) {
      let x_355 : vec4<f32> = u_xlat5;
      x_352 = vec3<f32>(x_355.x, x_355.y, x_355.z);
    } else {
      let x_358 : vec3<f32> = vs_TEXCOORD5;
      x_352 = x_358;
    }
    let x_359 : vec3<f32> = x_352;
    let x_360 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
    let x_362 : vec4<f32> = u_xlat5;
    let x_366 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_368 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) + -(x_366));
    let x_369 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
    let x_371 : vec4<f32> = u_xlat5;
    let x_375 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_376 : vec3<f32> = (vec3<f32>(x_371.x, x_371.y, x_371.z) * x_375);
    let x_377 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_377.x, x_376.x, x_376.y, x_376.z);
    let x_380 : f32 = u_xlat5.y;
    u_xlat23 = ((x_380 * 0.25f) + 0.75f);
    let x_387 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_387 * 0.5f) + 0.75f);
    let x_391 : f32 = u_xlat23;
    let x_392 : f32 = u_xlat24;
    u_xlat5.x = max(x_391, x_392);
    let x_403 : vec4<f32> = u_xlat5;
    let x_405 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_403.x, x_403.z, x_403.w));
    u_xlat5 = x_405;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_411 : vec4<f32> = u_xlat5;
  let x_413 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_411, x_413);
  let x_415 : f32 = u_xlat23;
  u_xlat23 = clamp(x_415, 0.0f, 1.0f);
  let x_420 : vec4<f32> = vs_TEXCOORD7;
  let x_422 : vec4<f32> = vs_TEXCOORD7;
  u_xlat18 = (vec2<f32>(x_420.x, x_420.y) / vec2<f32>(x_422.w, x_422.w));
  let x_430 : vec2<f32> = u_xlat18;
  let x_431 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_430);
  u_xlat24 = x_431.x;
  let x_433 : f32 = u_xlat23;
  let x_434 : f32 = u_xlat24;
  u_xlat23 = (x_433 + -(x_434));
  let x_437 : f32 = u_xlat22;
  let x_438 : f32 = u_xlat23;
  let x_440 : f32 = u_xlat24;
  u_xlat22 = ((x_437 * x_438) + x_440);
  let x_447 : vec3<f32> = u_xlat4;
  let x_449 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_447.x, x_447.y));
  u_xlat23 = x_449.w;
  let x_451 : f32 = u_xlat22;
  let x_452 : f32 = u_xlat23;
  u_xlat22 = (x_451 * x_452);
  let x_454 : f32 = u_xlat22;
  let x_458 : vec4<f32> = x_33.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_454, x_454, x_454) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_463 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_463) + 1.0f);
  let x_468 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_468;
  let x_471 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_471;
  let x_474 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_474;
  let x_476 : vec4<f32> = vs_TEXCOORD1;
  let x_479 : f32 = u_xlat21;
  let x_482 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_476.x, x_476.y, x_476.z)) * vec3<f32>(x_479, x_479, x_479)) + vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_485 : vec3<f32> = u_xlat6;
  let x_486 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_485, x_486);
  let x_488 : f32 = u_xlat21;
  u_xlat21 = max(x_488, 0.001f);
  let x_491 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_491);
  let x_493 : f32 = u_xlat21;
  let x_495 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_493, x_493, x_493) * x_495);
  let x_497 : vec4<f32> = u_xlat2;
  let x_499 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_497.x, x_497.y, x_497.z), -(x_499));
  let x_502 : vec4<f32> = u_xlat2;
  let x_504 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_502.x, x_502.y, x_502.z), vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_507 : f32 = u_xlat23;
  u_xlat23 = clamp(x_507, 0.0f, 1.0f);
  let x_509 : vec4<f32> = u_xlat2;
  let x_511 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_509.x, x_509.y, x_509.z), x_511);
  let x_515 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_515, 0.0f, 1.0f);
  let x_518 : vec4<f32> = u_xlat5;
  let x_520 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(vec3<f32>(x_518.x, x_518.y, x_518.z), x_520);
  let x_524 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_524, 0.0f, 1.0f);
  let x_529 : f32 = u_xlat9.x;
  let x_531 : f32 = u_xlat9.x;
  u_xlat16 = (x_529 * x_531);
  let x_533 : f32 = u_xlat16;
  let x_535 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_533, x_533), vec2<f32>(x_535, x_535));
  let x_538 : f32 = u_xlat16;
  u_xlat16 = (x_538 + -0.5f);
  let x_541 : f32 = u_xlat23;
  u_xlat3.x = (-(x_541) + 1.0f);
  let x_547 : f32 = u_xlat3.x;
  let x_549 : f32 = u_xlat3.x;
  u_xlat10 = (x_547 * x_549);
  let x_551 : f32 = u_xlat10;
  let x_552 : f32 = u_xlat10;
  u_xlat10 = (x_551 * x_552);
  let x_555 : f32 = u_xlat3.x;
  let x_556 : f32 = u_xlat10;
  u_xlat3.x = (x_555 * x_556);
  let x_559 : f32 = u_xlat16;
  let x_561 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_559 * x_561) + 1.0f);
  let x_565 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_565)) + 1.0f);
  let x_570 : f32 = u_xlat10;
  let x_571 : f32 = u_xlat10;
  u_xlat17 = (x_570 * x_571);
  let x_573 : f32 = u_xlat17;
  let x_574 : f32 = u_xlat17;
  u_xlat17 = (x_573 * x_574);
  let x_576 : f32 = u_xlat10;
  let x_577 : f32 = u_xlat17;
  u_xlat10 = (x_576 * x_577);
  let x_579 : f32 = u_xlat16;
  let x_580 : f32 = u_xlat10;
  u_xlat16 = ((x_579 * x_580) + 1.0f);
  let x_583 : f32 = u_xlat16;
  let x_585 : f32 = u_xlat3.x;
  u_xlat16 = (x_583 * x_585);
  let x_587 : f32 = u_xlat23;
  let x_588 : f32 = u_xlat16;
  u_xlat16 = (x_587 * x_588);
  let x_590 : f32 = u_xlat22;
  let x_591 : f32 = u_xlat22;
  u_xlat22 = (x_590 * x_591);
  let x_593 : f32 = u_xlat22;
  u_xlat22 = max(x_593, 0.002f);
  let x_596 : f32 = u_xlat22;
  u_xlat3.x = (-(x_596) + 1.0f);
  let x_600 : f32 = u_xlat21;
  let x_603 : f32 = u_xlat3.x;
  let x_605 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_600) * x_603) + x_605);
  let x_607 : f32 = u_xlat23;
  let x_609 : f32 = u_xlat3.x;
  let x_611 : f32 = u_xlat22;
  u_xlat3.x = ((x_607 * x_609) + x_611);
  let x_614 : f32 = u_xlat21;
  let x_617 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_614) * x_617);
  let x_619 : f32 = u_xlat23;
  let x_620 : f32 = u_xlat10;
  let x_622 : f32 = u_xlat21;
  u_xlat21 = ((x_619 * x_620) + x_622);
  let x_624 : f32 = u_xlat21;
  u_xlat21 = (x_624 + 0.00001f);
  let x_627 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_627);
  let x_629 : f32 = u_xlat22;
  let x_630 : f32 = u_xlat22;
  u_xlat22 = (x_629 * x_630);
  let x_633 : f32 = u_xlat2.x;
  let x_634 : f32 = u_xlat22;
  let x_637 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_633 * x_634) + -(x_637));
  let x_642 : f32 = u_xlat3.x;
  let x_644 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_642 * x_644) + 1.0f);
  let x_648 : f32 = u_xlat22;
  u_xlat22 = (x_648 * 0.318309873f);
  let x_652 : f32 = u_xlat2.x;
  let x_654 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_652 * x_654) + 0.0000001f);
  let x_659 : f32 = u_xlat22;
  let x_661 : f32 = u_xlat2.x;
  u_xlat22 = (x_659 / x_661);
  let x_663 : f32 = u_xlat21;
  let x_664 : f32 = u_xlat22;
  u_xlat21 = (x_663 * x_664);
  let x_666 : f32 = u_xlat23;
  let x_667 : f32 = u_xlat21;
  u_xlat21 = (x_666 * x_667);
  let x_669 : f32 = u_xlat21;
  u_xlat21 = (x_669 * 3.141592741f);
  let x_672 : f32 = u_xlat21;
  u_xlat21 = max(x_672, 0.0f);
  let x_674 : vec3<f32> = u_xlat0;
  let x_675 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_674, x_675);
  let x_678 : f32 = u_xlat22;
  u_xlatb22 = !((x_678 == 0.0f));
  let x_680 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_680);
  let x_682 : f32 = u_xlat21;
  let x_683 : f32 = u_xlat22;
  u_xlat21 = (x_682 * x_683);
  let x_685 : f32 = u_xlat16;
  let x_687 : vec3<f32> = u_xlat4;
  let x_688 : vec3<f32> = (vec3<f32>(x_685, x_685, x_685) * x_687);
  let x_689 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_688.x, x_689.y, x_688.y, x_688.z);
  let x_691 : vec3<f32> = u_xlat4;
  let x_692 : f32 = u_xlat21;
  u_xlat3 = (x_691 * vec3<f32>(x_692, x_692, x_692));
  let x_696 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_696) + 1.0f);
  let x_699 : f32 = u_xlat21;
  let x_700 : f32 = u_xlat21;
  u_xlat22 = (x_699 * x_700);
  let x_702 : f32 = u_xlat22;
  let x_703 : f32 = u_xlat22;
  u_xlat22 = (x_702 * x_703);
  let x_705 : f32 = u_xlat21;
  let x_706 : f32 = u_xlat22;
  u_xlat21 = (x_705 * x_706);
  let x_708 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_708) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_712 : vec3<f32> = u_xlat4;
  let x_713 : f32 = u_xlat21;
  let x_716 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_712 * vec3<f32>(x_713, x_713, x_713)) + x_716);
  let x_718 : vec3<f32> = u_xlat0;
  let x_719 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_718 * x_719);
  let x_721 : vec3<f32> = u_xlat1;
  let x_722 : vec4<f32> = u_xlat2;
  let x_725 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_721 * vec3<f32>(x_722.x, x_722.z, x_722.w)) + x_725);
  let x_728 : f32 = vs_TEXCOORD1.w;
  let x_730 : f32 = x_33.x_ProjectionParams.y;
  u_xlat21 = (x_728 / x_730);
  let x_732 : f32 = u_xlat21;
  u_xlat21 = (-(x_732) + 1.0f);
  let x_735 : f32 = u_xlat21;
  let x_737 : f32 = x_33.x_ProjectionParams.z;
  u_xlat21 = (x_735 * x_737);
  let x_739 : f32 = u_xlat21;
  u_xlat21 = max(x_739, 0.0f);
  let x_741 : f32 = u_xlat21;
  let x_744 : f32 = x_33.unity_FogParams.x;
  u_xlat21 = (x_741 * x_744);
  let x_746 : f32 = u_xlat21;
  let x_747 : f32 = u_xlat21;
  u_xlat21 = (x_746 * -(x_747));
  let x_750 : f32 = u_xlat21;
  u_xlat21 = exp2(x_750);
  let x_754 : vec3<f32> = u_xlat0;
  let x_755 : f32 = u_xlat21;
  let x_757 : vec3<f32> = (x_754 * vec3<f32>(x_755, x_755, x_755));
  let x_758 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

