struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_LightPositionRange : vec4<f32>,
  x_LightProjectionParams : vec4<f32>,
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

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_cube;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTextureB0 : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

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
  var u_xlatb22 : bool;
  var x_341 : vec3<f32>;
  var u_xlat23 : f32;
  var txVec0 : vec4<f32>;
  var u_xlat24 : f32;
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
  u_xlat4 = (vec3<f32>(x_192.y, x_192.y, x_192.y) * vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_202 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_204 : vec3<f32> = vs_TEXCOORD5;
  let x_207 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.x, x_204.x)) + x_207);
  let x_211 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_213 : vec3<f32> = vs_TEXCOORD5;
  let x_216 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.z, x_213.z, x_213.z)) + x_216);
  let x_218 : vec3<f32> = u_xlat4;
  let x_221 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat4 = (x_218 + vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_225 : vec3<f32> = vs_TEXCOORD5;
  let x_229 : vec3<f32> = x_33.x_WorldSpaceCameraPos;
  let x_230 : vec3<f32> = (-(x_225) + x_229);
  let x_231 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_236 : f32 = x_33.unity_MatrixV[0i].z;
  u_xlat6.x = x_236;
  let x_239 : f32 = x_33.unity_MatrixV[1i].z;
  u_xlat6.y = x_239;
  let x_243 : f32 = x_33.unity_MatrixV[2i].z;
  u_xlat6.z = x_243;
  let x_245 : vec4<f32> = u_xlat5;
  let x_247 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_245.x, x_245.y, x_245.z), x_247);
  let x_249 : vec3<f32> = vs_TEXCOORD5;
  let x_252 : vec4<f32> = x_33.unity_ShadowFadeCenterAndType;
  let x_255 : vec3<f32> = (x_249 + -(vec3<f32>(x_252.x, x_252.y, x_252.z)));
  let x_256 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec4<f32> = u_xlat5;
  let x_261 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_264);
  let x_266 : f32 = u_xlat21;
  let x_268 : f32 = u_xlat22;
  u_xlat22 = (-(x_266) + x_268);
  let x_272 : f32 = x_33.unity_ShadowFadeCenterAndType.w;
  let x_273 : f32 = u_xlat22;
  let x_275 : f32 = u_xlat21;
  u_xlat21 = ((x_272 * x_273) + x_275);
  let x_277 : f32 = u_xlat21;
  let x_280 : f32 = x_33.x_LightShadowData.z;
  let x_283 : f32 = x_33.x_LightShadowData.w;
  u_xlat21 = ((x_277 * x_280) + x_283);
  let x_285 : f32 = u_xlat21;
  u_xlat21 = clamp(x_285, 0.0f, 1.0f);
  let x_293 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_293 == 1.0f);
  let x_295 : bool = u_xlatb22;
  if (x_295) {
    let x_299 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_299 == 1.0f);
    let x_301 : vec3<f32> = vs_TEXCOORD5;
    let x_305 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_307 : vec3<f32> = (vec3<f32>(x_301.y, x_301.y, x_301.y) * vec3<f32>(x_305.x, x_305.y, x_305.z));
    let x_308 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
    let x_311 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_313 : vec3<f32> = vs_TEXCOORD5;
    let x_316 : vec4<f32> = u_xlat5;
    let x_318 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313.x, x_313.x, x_313.x)) + vec3<f32>(x_316.x, x_316.y, x_316.z));
    let x_319 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
    let x_322 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_324 : vec3<f32> = vs_TEXCOORD5;
    let x_327 : vec4<f32> = u_xlat5;
    let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.z, x_324.z, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
    let x_330 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
    let x_332 : vec4<f32> = u_xlat5;
    let x_335 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_337 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) + vec3<f32>(x_335.x, x_335.y, x_335.z));
    let x_338 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
    let x_340 : bool = u_xlatb22;
    if (x_340) {
      let x_344 : vec4<f32> = u_xlat5;
      x_341 = vec3<f32>(x_344.x, x_344.y, x_344.z);
    } else {
      let x_347 : vec3<f32> = vs_TEXCOORD5;
      x_341 = x_347;
    }
    let x_348 : vec3<f32> = x_341;
    let x_349 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_348.x, x_348.y, x_348.z, x_349.w);
    let x_351 : vec4<f32> = u_xlat5;
    let x_355 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_357 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) + -(x_355));
    let x_358 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
    let x_360 : vec4<f32> = u_xlat5;
    let x_364 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_365 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) * x_364);
    let x_366 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_366.x, x_365.x, x_365.y, x_365.z);
    let x_369 : f32 = u_xlat5.y;
    u_xlat22 = ((x_369 * 0.25f) + 0.75f);
    let x_376 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_376 * 0.5f) + 0.75f);
    let x_380 : f32 = u_xlat22;
    let x_381 : f32 = u_xlat23;
    u_xlat5.x = max(x_380, x_381);
    let x_392 : vec4<f32> = u_xlat5;
    let x_394 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_392.x, x_392.z, x_392.w));
    u_xlat5 = x_394;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_400 : vec4<f32> = u_xlat5;
  let x_403 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_400, x_403);
  let x_405 : f32 = u_xlat22;
  u_xlat22 = clamp(x_405, 0.0f, 1.0f);
  let x_407 : vec3<f32> = vs_TEXCOORD5;
  let x_409 : vec4<f32> = x_33.x_LightPositionRange;
  let x_412 : vec3<f32> = (x_407 + -(vec3<f32>(x_409.x, x_409.y, x_409.z)));
  let x_413 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
  let x_416 : f32 = u_xlat5.y;
  let x_419 : f32 = u_xlat5.x;
  u_xlat23 = max(abs(x_416), abs(x_419));
  let x_423 : f32 = u_xlat5.z;
  let x_425 : f32 = u_xlat23;
  u_xlat23 = max(abs(x_423), x_425);
  let x_427 : f32 = u_xlat23;
  let x_429 : f32 = x_33.x_LightProjectionParams.z;
  u_xlat23 = (x_427 + -(x_429));
  let x_432 : f32 = u_xlat23;
  u_xlat23 = max(x_432, 0.00001f);
  let x_435 : f32 = u_xlat23;
  let x_437 : f32 = x_33.x_LightProjectionParams.w;
  u_xlat23 = (x_435 * x_437);
  let x_440 : f32 = x_33.x_LightProjectionParams.y;
  let x_441 : f32 = u_xlat23;
  u_xlat23 = (x_440 / x_441);
  let x_443 : f32 = u_xlat23;
  let x_445 : f32 = x_33.x_LightProjectionParams.x;
  u_xlat23 = (x_443 + -(x_445));
  let x_448 : f32 = u_xlat23;
  u_xlat23 = (-(x_448) + 1.0f);
  let x_452 : vec4<f32> = u_xlat5;
  let x_453 : vec3<f32> = vec3<f32>(x_452.x, x_452.y, x_452.z);
  let x_454 : f32 = u_xlat23;
  txVec0 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454);
  let x_467 : vec4<f32> = txVec0;
  let x_469 : f32 = textureSampleCompare(x_ShadowMapTexture, sampler_ShadowMapTexture, x_467.xyz, x_467.w);
  u_xlat23 = x_469;
  let x_472 : f32 = x_33.x_LightShadowData.x;
  u_xlat24 = (-(x_472) + 1.0f);
  let x_475 : f32 = u_xlat23;
  let x_476 : f32 = u_xlat24;
  let x_479 : f32 = x_33.x_LightShadowData.x;
  u_xlat23 = ((x_475 * x_476) + x_479);
  let x_481 : f32 = u_xlat22;
  let x_482 : f32 = u_xlat23;
  u_xlat22 = (x_481 + -(x_482));
  let x_485 : f32 = u_xlat21;
  let x_486 : f32 = u_xlat22;
  let x_488 : f32 = u_xlat23;
  u_xlat21 = ((x_485 * x_486) + x_488);
  let x_490 : vec3<f32> = u_xlat4;
  let x_491 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_490, x_491);
  let x_498 : f32 = u_xlat22;
  let x_500 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_498, x_498));
  u_xlat22 = x_500.x;
  let x_510 : vec3<f32> = u_xlat4;
  let x_511 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_510);
  u_xlat23 = x_511.w;
  let x_513 : f32 = u_xlat22;
  let x_514 : f32 = u_xlat23;
  u_xlat22 = (x_513 * x_514);
  let x_516 : f32 = u_xlat21;
  let x_517 : f32 = u_xlat22;
  u_xlat21 = (x_516 * x_517);
  let x_521 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_521;
  let x_524 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_524;
  let x_527 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_527;
  let x_529 : vec3<f32> = u_xlat4;
  let x_530 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_529, x_530);
  let x_532 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_532);
  let x_534 : f32 = u_xlat22;
  let x_536 : vec3<f32> = u_xlat4;
  let x_537 : vec3<f32> = (vec3<f32>(x_534, x_534, x_534) * x_536);
  let x_538 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
  let x_540 : f32 = u_xlat21;
  let x_544 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_540, x_540, x_540) * vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_549 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_549) + 1.0f);
  let x_552 : vec3<f32> = u_xlat4;
  let x_553 : f32 = u_xlat22;
  let x_556 : vec3<f32> = u_xlat3;
  u_xlat4 = ((x_552 * vec3<f32>(x_553, x_553, x_553)) + -(x_556));
  let x_559 : vec3<f32> = u_xlat4;
  let x_560 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(x_559, x_560);
  let x_562 : f32 = u_xlat22;
  u_xlat22 = max(x_562, 0.001f);
  let x_565 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_565);
  let x_567 : f32 = u_xlat22;
  let x_569 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_567, x_567, x_567) * x_569);
  let x_571 : vec4<f32> = u_xlat2;
  let x_573 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_571.x, x_571.y, x_571.z), -(x_573));
  let x_576 : vec4<f32> = u_xlat2;
  let x_578 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_576.x, x_576.y, x_576.z), vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : f32 = u_xlat23;
  u_xlat23 = clamp(x_581, 0.0f, 1.0f);
  let x_583 : vec4<f32> = u_xlat2;
  let x_585 : vec3<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_583.x, x_583.y, x_583.z), x_585);
  let x_589 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_589, 0.0f, 1.0f);
  let x_592 : vec4<f32> = u_xlat5;
  let x_594 : vec3<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_592.x, x_592.y, x_592.z), x_594);
  let x_598 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_598, 0.0f, 1.0f);
  let x_603 : f32 = u_xlat9.x;
  let x_605 : f32 = u_xlat9.x;
  u_xlat16 = (x_603 * x_605);
  let x_607 : f32 = u_xlat16;
  let x_609 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_607, x_607), vec2<f32>(x_609, x_609));
  let x_612 : f32 = u_xlat16;
  u_xlat16 = (x_612 + -0.5f);
  let x_615 : f32 = u_xlat23;
  u_xlat3.x = (-(x_615) + 1.0f);
  let x_621 : f32 = u_xlat3.x;
  let x_623 : f32 = u_xlat3.x;
  u_xlat10 = (x_621 * x_623);
  let x_625 : f32 = u_xlat10;
  let x_626 : f32 = u_xlat10;
  u_xlat10 = (x_625 * x_626);
  let x_629 : f32 = u_xlat3.x;
  let x_630 : f32 = u_xlat10;
  u_xlat3.x = (x_629 * x_630);
  let x_633 : f32 = u_xlat16;
  let x_635 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_633 * x_635) + 1.0f);
  let x_639 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_639)) + 1.0f);
  let x_644 : f32 = u_xlat10;
  let x_645 : f32 = u_xlat10;
  u_xlat17 = (x_644 * x_645);
  let x_647 : f32 = u_xlat17;
  let x_648 : f32 = u_xlat17;
  u_xlat17 = (x_647 * x_648);
  let x_650 : f32 = u_xlat10;
  let x_651 : f32 = u_xlat17;
  u_xlat10 = (x_650 * x_651);
  let x_653 : f32 = u_xlat16;
  let x_654 : f32 = u_xlat10;
  u_xlat16 = ((x_653 * x_654) + 1.0f);
  let x_657 : f32 = u_xlat16;
  let x_659 : f32 = u_xlat3.x;
  u_xlat16 = (x_657 * x_659);
  let x_661 : f32 = u_xlat23;
  let x_662 : f32 = u_xlat16;
  u_xlat16 = (x_661 * x_662);
  let x_664 : f32 = u_xlat21;
  let x_665 : f32 = u_xlat21;
  u_xlat21 = (x_664 * x_665);
  let x_667 : f32 = u_xlat21;
  u_xlat21 = max(x_667, 0.002f);
  let x_670 : f32 = u_xlat21;
  u_xlat3.x = (-(x_670) + 1.0f);
  let x_674 : f32 = u_xlat22;
  let x_677 : f32 = u_xlat3.x;
  let x_679 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_674) * x_677) + x_679);
  let x_681 : f32 = u_xlat23;
  let x_683 : f32 = u_xlat3.x;
  let x_685 : f32 = u_xlat21;
  u_xlat3.x = ((x_681 * x_683) + x_685);
  let x_688 : f32 = u_xlat22;
  let x_691 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_688) * x_691);
  let x_693 : f32 = u_xlat23;
  let x_694 : f32 = u_xlat10;
  let x_696 : f32 = u_xlat22;
  u_xlat22 = ((x_693 * x_694) + x_696);
  let x_698 : f32 = u_xlat22;
  u_xlat22 = (x_698 + 0.00001f);
  let x_700 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_700);
  let x_702 : f32 = u_xlat21;
  let x_703 : f32 = u_xlat21;
  u_xlat21 = (x_702 * x_703);
  let x_706 : f32 = u_xlat2.x;
  let x_707 : f32 = u_xlat21;
  let x_710 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_706 * x_707) + -(x_710));
  let x_715 : f32 = u_xlat3.x;
  let x_717 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_715 * x_717) + 1.0f);
  let x_721 : f32 = u_xlat21;
  u_xlat21 = (x_721 * 0.318309873f);
  let x_725 : f32 = u_xlat2.x;
  let x_727 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_725 * x_727) + 0.0000001f);
  let x_732 : f32 = u_xlat21;
  let x_734 : f32 = u_xlat2.x;
  u_xlat21 = (x_732 / x_734);
  let x_736 : f32 = u_xlat21;
  let x_737 : f32 = u_xlat22;
  u_xlat21 = (x_736 * x_737);
  let x_739 : f32 = u_xlat23;
  let x_740 : f32 = u_xlat21;
  u_xlat21 = (x_739 * x_740);
  let x_742 : f32 = u_xlat21;
  u_xlat21 = (x_742 * 3.141592741f);
  let x_745 : f32 = u_xlat21;
  u_xlat21 = max(x_745, 0.0f);
  let x_747 : vec3<f32> = u_xlat0;
  let x_748 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_747, x_748);
  let x_750 : f32 = u_xlat22;
  u_xlatb22 = !((x_750 == 0.0f));
  let x_752 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_752);
  let x_754 : f32 = u_xlat21;
  let x_755 : f32 = u_xlat22;
  u_xlat21 = (x_754 * x_755);
  let x_757 : f32 = u_xlat16;
  let x_759 : vec3<f32> = u_xlat6;
  let x_760 : vec3<f32> = (vec3<f32>(x_757, x_757, x_757) * x_759);
  let x_761 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_760.x, x_761.y, x_760.y, x_760.z);
  let x_763 : vec3<f32> = u_xlat6;
  let x_764 : f32 = u_xlat21;
  u_xlat3 = (x_763 * vec3<f32>(x_764, x_764, x_764));
  let x_768 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_768) + 1.0f);
  let x_771 : f32 = u_xlat21;
  let x_772 : f32 = u_xlat21;
  u_xlat22 = (x_771 * x_772);
  let x_774 : f32 = u_xlat22;
  let x_775 : f32 = u_xlat22;
  u_xlat22 = (x_774 * x_775);
  let x_777 : f32 = u_xlat21;
  let x_778 : f32 = u_xlat22;
  u_xlat21 = (x_777 * x_778);
  let x_780 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_780) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_784 : vec3<f32> = u_xlat4;
  let x_785 : f32 = u_xlat21;
  let x_788 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_784 * vec3<f32>(x_785, x_785, x_785)) + x_788);
  let x_790 : vec3<f32> = u_xlat0;
  let x_791 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_790 * x_791);
  let x_793 : vec3<f32> = u_xlat1;
  let x_794 : vec4<f32> = u_xlat2;
  let x_797 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_793 * vec3<f32>(x_794.x, x_794.z, x_794.w)) + x_797);
  let x_800 : f32 = vs_TEXCOORD1.w;
  let x_802 : f32 = x_33.x_ProjectionParams.y;
  u_xlat21 = (x_800 / x_802);
  let x_804 : f32 = u_xlat21;
  u_xlat21 = (-(x_804) + 1.0f);
  let x_807 : f32 = u_xlat21;
  let x_809 : f32 = x_33.x_ProjectionParams.z;
  u_xlat21 = (x_807 * x_809);
  let x_811 : f32 = u_xlat21;
  u_xlat21 = max(x_811, 0.0f);
  let x_813 : f32 = u_xlat21;
  let x_816 : f32 = x_33.unity_FogParams.x;
  u_xlat21 = (x_813 * x_816);
  let x_818 : f32 = u_xlat21;
  let x_819 : f32 = u_xlat21;
  u_xlat21 = (x_818 * -(x_819));
  let x_822 : f32 = u_xlat21;
  u_xlat21 = exp2(x_822);
  let x_826 : vec3<f32> = u_xlat0;
  let x_827 : f32 = u_xlat21;
  let x_829 : vec3<f32> = (x_826 * vec3<f32>(x_827, x_827, x_827));
  let x_830 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

