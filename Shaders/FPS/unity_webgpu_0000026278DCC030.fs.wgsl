struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
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
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat39 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat40 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlatb41 : bool;

var<private> u_xlatb42 : bool;

var<private> u_xlat42 : f32;

var<private> u_xlat17 : f32;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb40 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlatb10 : vec3<bool>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb43 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlat27 : f32;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_196 : vec3<f32>;
  var x_376 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_571 : f32;
  var x_583 : f32;
  var x_595 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_753 : f32;
  var x_765 : f32;
  var x_777 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD1;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_24 : vec3<f32> = (-(x_13) + x_23);
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_24.x, x_24.y, x_24.z, x_25.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat39 = dot(vec3<f32>(x_29.x, x_29.y, x_29.z), vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_34 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat39;
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec3<f32> = (vec3<f32>(x_37, x_37, x_37) * vec3<f32>(x_39.x, x_39.y, x_39.z));
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_59 : vec2<f32> = vs_TEXCOORD2;
  let x_60 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_59);
  u_xlat2 = vec3<f32>(x_60.x, x_60.y, x_60.z);
  let x_62 : vec3<f32> = u_xlat2;
  let x_66 : vec4<f32> = x_18.x_Color;
  u_xlat2 = (x_62 * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_70 : vec3<f32> = u_xlat2;
  let x_73 : vec4<f32> = vs_COLOR0;
  u_xlat3 = (x_70 * vec3<f32>(x_73.x, x_73.y, x_73.z));
  let x_82 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat4.x = x_82;
  let x_87 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat4.y = x_87;
  let x_92 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat4.z = x_92;
  let x_95 : vec4<f32> = u_xlat0;
  let x_97 : vec4<f32> = u_xlat4;
  u_xlat40 = dot(vec3<f32>(x_95.x, x_95.y, x_95.z), vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : vec3<f32> = vs_TEXCOORD1;
  let x_103 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_106 : vec3<f32> = (x_100 + -(vec3<f32>(x_103.x, x_103.y, x_103.z)));
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : vec4<f32> = u_xlat4;
  let x_112 : vec4<f32> = u_xlat4;
  u_xlat41 = dot(vec3<f32>(x_110.x, x_110.y, x_110.z), vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : f32 = u_xlat41;
  u_xlat41 = sqrt(x_115);
  let x_117 : f32 = u_xlat40;
  let x_119 : f32 = u_xlat41;
  u_xlat41 = (-(x_117) + x_119);
  let x_123 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_124 : f32 = u_xlat41;
  let x_126 : f32 = u_xlat40;
  u_xlat40 = ((x_123 * x_124) + x_126);
  let x_128 : f32 = u_xlat40;
  let x_131 : f32 = x_18.x_LightShadowData.z;
  let x_134 : f32 = x_18.x_LightShadowData.w;
  u_xlat40 = ((x_128 * x_131) + x_134);
  let x_136 : f32 = u_xlat40;
  u_xlat40 = clamp(x_136, 0.0f, 1.0f);
  let x_145 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb41 = (x_145 == 1.0f);
  let x_147 : bool = u_xlatb41;
  if (x_147) {
    let x_152 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb42 = (x_152 == 1.0f);
    let x_154 : vec3<f32> = vs_TEXCOORD1;
    let x_158 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_160 : vec3<f32> = (vec3<f32>(x_154.y, x_154.y, x_154.y) * vec3<f32>(x_158.x, x_158.y, x_158.z));
    let x_161 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
    let x_164 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_166 : vec3<f32> = vs_TEXCOORD1;
    let x_169 : vec4<f32> = u_xlat4;
    let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.x, x_166.x, x_166.x)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
    let x_172 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
    let x_175 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_177 : vec3<f32> = vs_TEXCOORD1;
    let x_180 : vec4<f32> = u_xlat4;
    let x_182 : vec3<f32> = ((vec3<f32>(x_175.x, x_175.y, x_175.z) * vec3<f32>(x_177.z, x_177.z, x_177.z)) + vec3<f32>(x_180.x, x_180.y, x_180.z));
    let x_183 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
    let x_185 : vec4<f32> = u_xlat4;
    let x_189 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_191 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) + vec3<f32>(x_189.x, x_189.y, x_189.z));
    let x_192 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
    let x_194 : bool = u_xlatb42;
    if (x_194) {
      let x_199 : vec4<f32> = u_xlat4;
      x_196 = vec3<f32>(x_199.x, x_199.y, x_199.z);
    } else {
      let x_202 : vec3<f32> = vs_TEXCOORD1;
      x_196 = x_202;
    }
    let x_203 : vec3<f32> = x_196;
    let x_204 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
    let x_206 : vec4<f32> = u_xlat4;
    let x_210 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_212 : vec3<f32> = (vec3<f32>(x_206.x, x_206.y, x_206.z) + -(x_210));
    let x_213 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
    let x_215 : vec4<f32> = u_xlat4;
    let x_219 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_220 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) * x_219);
    let x_221 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_221.x, x_220.x, x_220.y, x_220.z);
    let x_225 : f32 = u_xlat4.y;
    u_xlat42 = ((x_225 * 0.25f) + 0.75f);
    let x_232 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat17 = ((x_232 * 0.5f) + 0.75f);
    let x_236 : f32 = u_xlat42;
    let x_237 : f32 = u_xlat17;
    u_xlat4.x = max(x_236, x_237);
    let x_248 : vec4<f32> = u_xlat4;
    let x_250 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_248.x, x_248.z, x_248.w));
    u_xlat4 = x_250;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_256 : vec4<f32> = u_xlat4;
  let x_259 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat42 = dot(x_256, x_259);
  let x_261 : f32 = u_xlat42;
  u_xlat42 = clamp(x_261, 0.0f, 1.0f);
  let x_264 : vec4<f32> = vs_TEXCOORD5;
  let x_266 : vec4<f32> = vs_TEXCOORD5;
  let x_268 : vec2<f32> = (vec2<f32>(x_264.x, x_264.y) / vec2<f32>(x_266.w, x_266.w));
  let x_269 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_268.x, x_268.y, x_269.z, x_269.w);
  let x_276 : vec4<f32> = u_xlat4;
  let x_278 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_276.x, x_276.y));
  u_xlat4.x = x_278.x;
  let x_281 : f32 = u_xlat42;
  let x_283 : f32 = u_xlat4.x;
  u_xlat42 = (x_281 + -(x_283));
  let x_286 : f32 = u_xlat40;
  let x_287 : f32 = u_xlat42;
  let x_290 : f32 = u_xlat4.x;
  u_xlat40 = ((x_286 * x_287) + x_290);
  let x_294 : f32 = x_18.x_Glossiness;
  u_xlat42 = (-(x_294) + 1.0f);
  let x_297 : vec4<f32> = u_xlat1;
  let x_301 : vec3<f32> = vs_TEXCOORD0;
  u_xlat4.x = dot(-(vec3<f32>(x_297.x, x_297.y, x_297.z)), x_301);
  let x_305 : f32 = u_xlat4.x;
  let x_307 : f32 = u_xlat4.x;
  u_xlat4.x = (x_305 + x_307);
  let x_310 : vec3<f32> = vs_TEXCOORD0;
  let x_311 : vec4<f32> = u_xlat4;
  let x_315 : vec4<f32> = u_xlat1;
  let x_318 : vec3<f32> = ((x_310 * -(vec3<f32>(x_311.x, x_311.x, x_311.x))) + -(vec3<f32>(x_315.x, x_315.y, x_315.z)));
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_322 : f32 = u_xlat40;
  let x_326 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_322, x_322, x_322) * vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : bool = u_xlatb41;
  if (x_329) {
    let x_334 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb40 = (x_334 == 1.0f);
    let x_337 : vec3<f32> = vs_TEXCOORD1;
    let x_340 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_342 : vec3<f32> = (vec3<f32>(x_337.y, x_337.y, x_337.y) * vec3<f32>(x_340.x, x_340.y, x_340.z));
    let x_343 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
    let x_346 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_348 : vec3<f32> = vs_TEXCOORD1;
    let x_351 : vec4<f32> = u_xlat6;
    let x_353 : vec3<f32> = ((vec3<f32>(x_346.x, x_346.y, x_346.z) * vec3<f32>(x_348.x, x_348.x, x_348.x)) + vec3<f32>(x_351.x, x_351.y, x_351.z));
    let x_354 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
    let x_357 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_359 : vec3<f32> = vs_TEXCOORD1;
    let x_362 : vec4<f32> = u_xlat6;
    let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.z, x_359.z, x_359.z)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
    let x_365 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
    let x_367 : vec4<f32> = u_xlat6;
    let x_370 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_372 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) + vec3<f32>(x_370.x, x_370.y, x_370.z));
    let x_373 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
    let x_375 : bool = u_xlatb40;
    if (x_375) {
      let x_379 : vec4<f32> = u_xlat6;
      x_376 = vec3<f32>(x_379.x, x_379.y, x_379.z);
    } else {
      let x_382 : vec3<f32> = vs_TEXCOORD1;
      x_376 = x_382;
    }
    let x_383 : vec3<f32> = x_376;
    let x_384 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
    let x_386 : vec4<f32> = u_xlat6;
    let x_389 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_391 : vec3<f32> = (vec3<f32>(x_386.x, x_386.y, x_386.z) + -(x_389));
    let x_392 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_394 : vec4<f32> = u_xlat6;
    let x_397 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) * x_397);
    let x_399 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_399.x, x_398.x, x_398.y, x_398.z);
    let x_402 : f32 = u_xlat6.y;
    u_xlat40 = (x_402 * 0.25f);
    let x_405 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat41 = (x_405 * 0.5f);
    let x_409 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat43 = ((-(x_409) * 0.5f) + 0.25f);
    let x_413 : f32 = u_xlat40;
    let x_414 : f32 = u_xlat41;
    u_xlat40 = max(x_413, x_414);
    let x_416 : f32 = u_xlat43;
    let x_417 : f32 = u_xlat40;
    u_xlat6.x = min(x_416, x_417);
    let x_424 : vec4<f32> = u_xlat6;
    let x_426 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_424.x, x_424.z, x_424.w));
    u_xlat7 = x_426;
    let x_428 : vec4<f32> = u_xlat6;
    let x_431 : vec3<f32> = (vec3<f32>(x_428.x, x_428.z, x_428.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_432 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
    let x_437 : vec4<f32> = u_xlat8;
    let x_439 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_437.x, x_437.y, x_437.z));
    u_xlat8 = x_439;
    let x_440 : vec4<f32> = u_xlat6;
    let x_443 : vec3<f32> = (vec3<f32>(x_440.x, x_440.z, x_440.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_444 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
    let x_449 : vec4<f32> = u_xlat6;
    let x_451 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_449.x, x_449.y, x_449.z));
    u_xlat6 = x_451;
    let x_453 : vec3<f32> = vs_TEXCOORD0;
    let x_454 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
    u_xlat9.w = 1.0f;
    let x_457 : vec4<f32> = u_xlat7;
    let x_458 : vec4<f32> = u_xlat9;
    u_xlat7.x = dot(x_457, x_458);
    let x_461 : vec4<f32> = u_xlat8;
    let x_462 : vec4<f32> = u_xlat9;
    u_xlat7.y = dot(x_461, x_462);
    let x_465 : vec4<f32> = u_xlat6;
    let x_466 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(x_465, x_466);
  } else {
    let x_470 : vec3<f32> = vs_TEXCOORD0;
    let x_471 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
    u_xlat6.w = 1.0f;
    let x_475 : vec4<f32> = x_18.unity_SHAr;
    let x_476 : vec4<f32> = u_xlat6;
    u_xlat7.x = dot(x_475, x_476);
    let x_480 : vec4<f32> = x_18.unity_SHAg;
    let x_481 : vec4<f32> = u_xlat6;
    u_xlat7.y = dot(x_480, x_481);
    let x_486 : vec4<f32> = x_18.unity_SHAb;
    let x_487 : vec4<f32> = u_xlat6;
    u_xlat7.z = dot(x_486, x_487);
  }
  let x_490 : vec4<f32> = u_xlat7;
  let x_493 : vec3<f32> = vs_TEXCOORD3;
  let x_494 : vec3<f32> = (vec3<f32>(x_490.x, x_490.y, x_490.z) + x_493);
  let x_495 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_494.x, x_494.y, x_494.z, x_495.w);
  let x_497 : vec4<f32> = u_xlat6;
  let x_500 : vec3<f32> = max(vec3<f32>(x_497.x, x_497.y, x_497.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_501 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_505 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb40 = (0.0f < x_505);
  let x_507 : bool = u_xlatb40;
  if (x_507) {
    let x_510 : vec4<f32> = u_xlat4;
    let x_512 : vec4<f32> = u_xlat4;
    u_xlat40 = dot(vec3<f32>(x_510.x, x_510.y, x_510.z), vec3<f32>(x_512.x, x_512.y, x_512.z));
    let x_515 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_515);
    let x_517 : f32 = u_xlat40;
    let x_519 : vec4<f32> = u_xlat4;
    let x_521 : vec3<f32> = (vec3<f32>(x_517, x_517, x_517) * vec3<f32>(x_519.x, x_519.y, x_519.z));
    let x_522 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
    let x_524 : vec3<f32> = vs_TEXCOORD1;
    let x_528 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    let x_530 : vec3<f32> = (-(x_524) + vec3<f32>(x_528.x, x_528.y, x_528.z));
    let x_531 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
    let x_533 : vec4<f32> = u_xlat8;
    let x_535 : vec4<f32> = u_xlat7;
    let x_537 : vec3<f32> = (vec3<f32>(x_533.x, x_533.y, x_533.z) / vec3<f32>(x_535.x, x_535.y, x_535.z));
    let x_538 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
    let x_540 : vec3<f32> = vs_TEXCOORD1;
    let x_544 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_546 : vec3<f32> = (-(x_540) + vec3<f32>(x_544.x, x_544.y, x_544.z));
    let x_547 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_546.x, x_546.y, x_546.z, x_547.w);
    let x_549 : vec4<f32> = u_xlat9;
    let x_551 : vec4<f32> = u_xlat7;
    let x_553 : vec3<f32> = (vec3<f32>(x_549.x, x_549.y, x_549.z) / vec3<f32>(x_551.x, x_551.y, x_551.z));
    let x_554 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
    let x_560 : vec4<f32> = u_xlat7;
    let x_563 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_560.x, x_560.y, x_560.z, x_560.x));
    u_xlatb10 = vec3<bool>(x_563.x, x_563.y, x_563.z);
    let x_567 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_567;
    let x_569 : bool = u_xlatb10.x;
    if (x_569) {
      let x_575 : f32 = u_xlat8.x;
      x_571 = x_575;
    } else {
      let x_578 : f32 = u_xlat9.x;
      x_571 = x_578;
    }
    let x_579 : f32 = x_571;
    hlslcc_movcTemp.x = x_579;
    let x_582 : bool = u_xlatb10.y;
    if (x_582) {
      let x_587 : f32 = u_xlat8.y;
      x_583 = x_587;
    } else {
      let x_590 : f32 = u_xlat9.y;
      x_583 = x_590;
    }
    let x_591 : f32 = x_583;
    hlslcc_movcTemp.y = x_591;
    let x_594 : bool = u_xlatb10.z;
    if (x_594) {
      let x_599 : f32 = u_xlat8.z;
      x_595 = x_599;
    } else {
      let x_602 : f32 = u_xlat9.z;
      x_595 = x_602;
    }
    let x_603 : f32 = x_595;
    hlslcc_movcTemp.z = x_603;
    let x_605 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_605;
    let x_607 : f32 = u_xlat8.y;
    let x_609 : f32 = u_xlat8.x;
    u_xlat40 = min(x_607, x_609);
    let x_612 : f32 = u_xlat8.z;
    let x_613 : f32 = u_xlat40;
    u_xlat40 = min(x_612, x_613);
    let x_615 : vec3<f32> = vs_TEXCOORD1;
    let x_617 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    let x_620 : vec3<f32> = (x_615 + -(vec3<f32>(x_617.x, x_617.y, x_617.z)));
    let x_621 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
    let x_623 : vec4<f32> = u_xlat7;
    let x_625 : f32 = u_xlat40;
    let x_628 : vec4<f32> = u_xlat8;
    let x_630 : vec3<f32> = ((vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(x_625, x_625, x_625)) + vec3<f32>(x_628.x, x_628.y, x_628.z));
    let x_631 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  } else {
    let x_634 : vec4<f32> = u_xlat4;
    let x_635 : vec3<f32> = vec3<f32>(x_634.x, x_634.y, x_634.z);
    let x_636 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  }
  let x_638 : f32 = u_xlat42;
  u_xlat40 = ((-(x_638) * 0.699999988f) + 1.700000048f);
  let x_644 : f32 = u_xlat40;
  let x_645 : f32 = u_xlat42;
  u_xlat40 = (x_644 * x_645);
  let x_647 : f32 = u_xlat40;
  u_xlat40 = (x_647 * 6.0f);
  let x_658 : vec4<f32> = u_xlat7;
  let x_660 : f32 = u_xlat40;
  let x_661 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_658.x, x_658.y, x_658.z), x_660);
  u_xlat7 = x_661;
  let x_663 : f32 = u_xlat7.w;
  u_xlat41 = (x_663 + -1.0f);
  let x_668 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_669 : f32 = u_xlat41;
  u_xlat41 = ((x_668 * x_669) + 1.0f);
  let x_672 : f32 = u_xlat41;
  u_xlat41 = log2(x_672);
  let x_674 : f32 = u_xlat41;
  let x_676 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat41 = (x_674 * x_676);
  let x_678 : f32 = u_xlat41;
  u_xlat41 = exp2(x_678);
  let x_680 : f32 = u_xlat41;
  let x_682 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat41 = (x_680 * x_682);
  let x_684 : vec4<f32> = u_xlat7;
  let x_686 : f32 = u_xlat41;
  let x_688 : vec3<f32> = (vec3<f32>(x_684.x, x_684.y, x_684.z) * vec3<f32>(x_686, x_686, x_686));
  let x_689 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_693 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb43 = (x_693 < 0.999989986f);
  let x_696 : bool = u_xlatb43;
  if (x_696) {
    let x_701 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb43 = (0.0f < x_701);
    let x_703 : bool = u_xlatb43;
    if (x_703) {
      let x_706 : vec4<f32> = u_xlat4;
      let x_708 : vec4<f32> = u_xlat4;
      u_xlat43 = dot(vec3<f32>(x_706.x, x_706.y, x_706.z), vec3<f32>(x_708.x, x_708.y, x_708.z));
      let x_711 : f32 = u_xlat43;
      u_xlat43 = inverseSqrt(x_711);
      let x_713 : f32 = u_xlat43;
      let x_715 : vec4<f32> = u_xlat4;
      let x_717 : vec3<f32> = (vec3<f32>(x_713, x_713, x_713) * vec3<f32>(x_715.x, x_715.y, x_715.z));
      let x_718 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
      let x_721 : vec3<f32> = vs_TEXCOORD1;
      let x_725 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_721) + vec3<f32>(x_725.x, x_725.y, x_725.z));
      let x_728 : vec3<f32> = u_xlat10;
      let x_729 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_728 / vec3<f32>(x_729.x, x_729.y, x_729.z));
      let x_733 : vec3<f32> = vs_TEXCOORD1;
      let x_737 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_733) + vec3<f32>(x_737.x, x_737.y, x_737.z));
      let x_740 : vec3<f32> = u_xlat11;
      let x_741 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_740 / vec3<f32>(x_741.x, x_741.y, x_741.z));
      let x_745 : vec4<f32> = u_xlat9;
      let x_747 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_745.x, x_745.y, x_745.z, x_745.x));
      u_xlatb12 = vec3<bool>(x_747.x, x_747.y, x_747.z);
      let x_750 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_750;
      let x_752 : bool = u_xlatb12.x;
      if (x_752) {
        let x_757 : f32 = u_xlat10.x;
        x_753 = x_757;
      } else {
        let x_760 : f32 = u_xlat11.x;
        x_753 = x_760;
      }
      let x_761 : f32 = x_753;
      hlslcc_movcTemp_1.x = x_761;
      let x_764 : bool = u_xlatb12.y;
      if (x_764) {
        let x_769 : f32 = u_xlat10.y;
        x_765 = x_769;
      } else {
        let x_772 : f32 = u_xlat11.y;
        x_765 = x_772;
      }
      let x_773 : f32 = x_765;
      hlslcc_movcTemp_1.y = x_773;
      let x_776 : bool = u_xlatb12.z;
      if (x_776) {
        let x_781 : f32 = u_xlat10.z;
        x_777 = x_781;
      } else {
        let x_784 : f32 = u_xlat11.z;
        x_777 = x_784;
      }
      let x_785 : f32 = x_777;
      hlslcc_movcTemp_1.z = x_785;
      let x_787 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_787;
      let x_789 : f32 = u_xlat10.y;
      let x_791 : f32 = u_xlat10.x;
      u_xlat43 = min(x_789, x_791);
      let x_794 : f32 = u_xlat10.z;
      let x_795 : f32 = u_xlat43;
      u_xlat43 = min(x_794, x_795);
      let x_797 : vec3<f32> = vs_TEXCOORD1;
      let x_799 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat10 = (x_797 + -(vec3<f32>(x_799.x, x_799.y, x_799.z)));
      let x_803 : vec4<f32> = u_xlat9;
      let x_805 : f32 = u_xlat43;
      let x_808 : vec3<f32> = u_xlat10;
      let x_809 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_805, x_805, x_805)) + x_808);
      let x_810 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
    }
    let x_816 : vec4<f32> = u_xlat4;
    let x_818 : f32 = u_xlat40;
    let x_819 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_816.x, x_816.y, x_816.z), x_818);
    u_xlat4 = x_819;
    let x_821 : f32 = u_xlat4.w;
    u_xlat40 = (x_821 + -1.0f);
    let x_825 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_826 : f32 = u_xlat40;
    u_xlat40 = ((x_825 * x_826) + 1.0f);
    let x_829 : f32 = u_xlat40;
    u_xlat40 = log2(x_829);
    let x_831 : f32 = u_xlat40;
    let x_833 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat40 = (x_831 * x_833);
    let x_835 : f32 = u_xlat40;
    u_xlat40 = exp2(x_835);
    let x_837 : f32 = u_xlat40;
    let x_839 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat40 = (x_837 * x_839);
    let x_841 : vec4<f32> = u_xlat4;
    let x_843 : f32 = u_xlat40;
    let x_845 : vec3<f32> = (vec3<f32>(x_841.x, x_841.y, x_841.z) * vec3<f32>(x_843, x_843, x_843));
    let x_846 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
    let x_848 : f32 = u_xlat41;
    let x_850 : vec4<f32> = u_xlat7;
    let x_853 : vec4<f32> = u_xlat4;
    let x_856 : vec3<f32> = ((vec3<f32>(x_848, x_848, x_848) * vec3<f32>(x_850.x, x_850.y, x_850.z)) + -(vec3<f32>(x_853.x, x_853.y, x_853.z)));
    let x_857 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
    let x_860 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_862 : vec4<f32> = u_xlat7;
    let x_865 : vec4<f32> = u_xlat4;
    let x_867 : vec3<f32> = ((vec3<f32>(x_860.w, x_860.w, x_860.w) * vec3<f32>(x_862.x, x_862.y, x_862.z)) + vec3<f32>(x_865.x, x_865.y, x_865.z));
    let x_868 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  }
  let x_870 : vec3<f32> = vs_TEXCOORD0;
  let x_871 : vec3<f32> = vs_TEXCOORD0;
  u_xlat40 = dot(x_870, x_871);
  let x_873 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_873);
  let x_875 : f32 = u_xlat40;
  let x_877 : vec3<f32> = vs_TEXCOORD0;
  let x_878 : vec3<f32> = (vec3<f32>(x_875, x_875, x_875) * x_877);
  let x_879 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_881 : vec3<f32> = u_xlat2;
  let x_882 : vec4<f32> = vs_COLOR0;
  u_xlat2 = ((x_881 * vec3<f32>(x_882.x, x_882.y, x_882.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_890 : f32 = x_18.x_Metallic;
  let x_892 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_890, x_890, x_890) * x_892) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_898 : f32 = x_18.x_Metallic;
  u_xlat40 = ((-(x_898) * 0.959999979f) + 0.959999979f);
  let x_903 : f32 = u_xlat40;
  let x_905 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_903, x_903, x_903) * x_905);
  let x_907 : vec4<f32> = u_xlat0;
  let x_909 : f32 = u_xlat39;
  let x_913 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_915 : vec3<f32> = ((vec3<f32>(x_907.x, x_907.y, x_907.z) * vec3<f32>(x_909, x_909, x_909)) + vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat0;
  let x_920 : vec4<f32> = u_xlat0;
  u_xlat39 = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), vec3<f32>(x_920.x, x_920.y, x_920.z));
  let x_923 : f32 = u_xlat39;
  u_xlat39 = max(x_923, 0.001f);
  let x_926 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_926);
  let x_928 : f32 = u_xlat39;
  let x_930 : vec4<f32> = u_xlat0;
  let x_932 : vec3<f32> = (vec3<f32>(x_928, x_928, x_928) * vec3<f32>(x_930.x, x_930.y, x_930.z));
  let x_933 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_932.x, x_932.y, x_932.z, x_933.w);
  let x_935 : vec4<f32> = u_xlat4;
  let x_937 : vec4<f32> = u_xlat1;
  u_xlat39 = dot(vec3<f32>(x_935.x, x_935.y, x_935.z), vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : vec4<f32> = u_xlat4;
  let x_943 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_940.x, x_940.y, x_940.z), vec3<f32>(x_943.x, x_943.y, x_943.z));
  let x_948 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_948, 0.0f, 1.0f);
  let x_952 : vec4<f32> = u_xlat4;
  let x_954 : vec4<f32> = u_xlat0;
  u_xlat14 = dot(vec3<f32>(x_952.x, x_952.y, x_952.z), vec3<f32>(x_954.x, x_954.y, x_954.z));
  let x_957 : f32 = u_xlat14;
  u_xlat14 = clamp(x_957, 0.0f, 1.0f);
  let x_960 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_962 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_960.x, x_960.y, x_960.z), vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_967 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_967, 0.0f, 1.0f);
  let x_972 : f32 = u_xlat0.x;
  let x_974 : f32 = u_xlat0.x;
  u_xlat13.x = (x_972 * x_974);
  let x_977 : vec3<f32> = u_xlat13;
  let x_979 : f32 = u_xlat42;
  u_xlat13.x = dot(vec2<f32>(x_977.x, x_977.x), vec2<f32>(x_979, x_979));
  let x_984 : f32 = u_xlat13.x;
  u_xlat13.x = (x_984 + -0.5f);
  let x_990 : f32 = u_xlat1.x;
  u_xlat26 = (-(x_990) + 1.0f);
  let x_994 : f32 = u_xlat26;
  let x_995 : f32 = u_xlat26;
  u_xlat27 = (x_994 * x_995);
  let x_997 : f32 = u_xlat27;
  let x_998 : f32 = u_xlat27;
  u_xlat27 = (x_997 * x_998);
  let x_1000 : f32 = u_xlat26;
  let x_1001 : f32 = u_xlat27;
  u_xlat26 = (x_1000 * x_1001);
  let x_1004 : f32 = u_xlat13.x;
  let x_1005 : f32 = u_xlat26;
  u_xlat26 = ((x_1004 * x_1005) + 1.0f);
  let x_1008 : f32 = u_xlat39;
  u_xlat27 = (-(abs(x_1008)) + 1.0f);
  let x_1012 : f32 = u_xlat27;
  let x_1013 : f32 = u_xlat27;
  u_xlat41 = (x_1012 * x_1013);
  let x_1015 : f32 = u_xlat41;
  let x_1016 : f32 = u_xlat41;
  u_xlat41 = (x_1015 * x_1016);
  let x_1018 : f32 = u_xlat27;
  let x_1019 : f32 = u_xlat41;
  u_xlat27 = (x_1018 * x_1019);
  let x_1022 : f32 = u_xlat13.x;
  let x_1023 : f32 = u_xlat27;
  u_xlat13.x = ((x_1022 * x_1023) + 1.0f);
  let x_1028 : f32 = u_xlat13.x;
  let x_1029 : f32 = u_xlat26;
  u_xlat13.x = (x_1028 * x_1029);
  let x_1032 : f32 = u_xlat42;
  let x_1033 : f32 = u_xlat42;
  u_xlat26 = (x_1032 * x_1033);
  let x_1035 : f32 = u_xlat26;
  u_xlat26 = max(x_1035, 0.002f);
  let x_1038 : f32 = u_xlat26;
  u_xlat41 = (-(x_1038) + 1.0f);
  let x_1041 : f32 = u_xlat39;
  let x_1043 : f32 = u_xlat41;
  let x_1045 : f32 = u_xlat26;
  u_xlat42 = ((abs(x_1041) * x_1043) + x_1045);
  let x_1048 : f32 = u_xlat1.x;
  let x_1049 : f32 = u_xlat41;
  let x_1051 : f32 = u_xlat26;
  u_xlat41 = ((x_1048 * x_1049) + x_1051);
  let x_1053 : f32 = u_xlat39;
  let x_1055 : f32 = u_xlat41;
  u_xlat39 = (abs(x_1053) * x_1055);
  let x_1058 : f32 = u_xlat1.x;
  let x_1059 : f32 = u_xlat42;
  let x_1061 : f32 = u_xlat39;
  u_xlat39 = ((x_1058 * x_1059) + x_1061);
  let x_1063 : f32 = u_xlat39;
  u_xlat39 = (x_1063 + 0.00001f);
  let x_1066 : f32 = u_xlat39;
  u_xlat39 = (0.5f / x_1066);
  let x_1068 : f32 = u_xlat26;
  let x_1069 : f32 = u_xlat26;
  u_xlat41 = (x_1068 * x_1069);
  let x_1071 : f32 = u_xlat14;
  let x_1072 : f32 = u_xlat41;
  let x_1074 : f32 = u_xlat14;
  u_xlat42 = ((x_1071 * x_1072) + -(x_1074));
  let x_1077 : f32 = u_xlat42;
  let x_1078 : f32 = u_xlat14;
  u_xlat14 = ((x_1077 * x_1078) + 1.0f);
  let x_1081 : f32 = u_xlat41;
  u_xlat41 = (x_1081 * 0.318309873f);
  let x_1084 : f32 = u_xlat14;
  let x_1085 : f32 = u_xlat14;
  u_xlat14 = ((x_1084 * x_1085) + 0.0000001f);
  let x_1089 : f32 = u_xlat41;
  let x_1090 : f32 = u_xlat14;
  u_xlat14 = (x_1089 / x_1090);
  let x_1092 : f32 = u_xlat39;
  let x_1093 : f32 = u_xlat14;
  u_xlat13.z = (x_1092 * x_1093);
  let x_1096 : vec4<f32> = u_xlat1;
  let x_1098 : vec3<f32> = u_xlat13;
  let x_1100 : vec2<f32> = (vec2<f32>(x_1096.x, x_1096.x) * vec2<f32>(x_1098.x, x_1098.z));
  let x_1101 : vec3<f32> = u_xlat13;
  u_xlat13 = vec3<f32>(x_1100.x, x_1101.y, x_1100.y);
  let x_1104 : f32 = u_xlat13.z;
  u_xlat39 = (x_1104 * 3.141592741f);
  let x_1107 : f32 = u_xlat39;
  u_xlat39 = max(x_1107, 0.0f);
  let x_1109 : f32 = u_xlat26;
  let x_1110 : f32 = u_xlat26;
  u_xlat26 = ((x_1109 * x_1110) + 1.0f);
  let x_1113 : f32 = u_xlat26;
  u_xlat26 = (1.0f / x_1113);
  let x_1115 : vec3<f32> = u_xlat2;
  let x_1116 : vec3<f32> = u_xlat2;
  u_xlat1.x = dot(x_1115, x_1116);
  let x_1121 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_1121 == 0.0f));
  let x_1123 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_1123);
  let x_1126 : f32 = u_xlat39;
  let x_1128 : f32 = u_xlat1.x;
  u_xlat39 = (x_1126 * x_1128);
  let x_1130 : f32 = u_xlat40;
  let x_1133 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_1130) + x_1133);
  let x_1137 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1137 + 1.0f);
  let x_1141 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1141, 0.0f, 1.0f);
  let x_1144 : vec3<f32> = u_xlat5;
  let x_1145 : vec3<f32> = u_xlat13;
  let x_1148 : vec4<f32> = u_xlat6;
  let x_1150 : vec3<f32> = ((x_1144 * vec3<f32>(x_1145.x, x_1145.x, x_1145.x)) + vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec3<f32> = u_xlat5;
  let x_1154 : f32 = u_xlat39;
  u_xlat5 = (x_1153 * vec3<f32>(x_1154, x_1154, x_1154));
  let x_1158 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1158) + 1.0f);
  let x_1163 : f32 = u_xlat0.x;
  let x_1165 : f32 = u_xlat0.x;
  u_xlat13.x = (x_1163 * x_1165);
  let x_1169 : f32 = u_xlat13.x;
  let x_1171 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1169 * x_1171);
  let x_1175 : f32 = u_xlat0.x;
  let x_1177 : f32 = u_xlat13.x;
  u_xlat0.x = (x_1175 * x_1177);
  let x_1180 : vec3<f32> = u_xlat2;
  let x_1183 : vec3<f32> = (-(x_1180) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1184 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1186 : vec4<f32> = u_xlat6;
  let x_1188 : vec4<f32> = u_xlat0;
  let x_1191 : vec3<f32> = u_xlat2;
  let x_1192 : vec3<f32> = ((vec3<f32>(x_1186.x, x_1186.y, x_1186.z) * vec3<f32>(x_1188.x, x_1188.x, x_1188.x)) + x_1191);
  let x_1193 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1192.x, x_1192.y, x_1193.z, x_1192.z);
  let x_1195 : vec4<f32> = u_xlat0;
  let x_1197 : vec3<f32> = u_xlat5;
  let x_1198 : vec3<f32> = (vec3<f32>(x_1195.x, x_1195.y, x_1195.w) * x_1197);
  let x_1199 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1198.x, x_1198.y, x_1199.z, x_1198.z);
  let x_1201 : vec3<f32> = u_xlat3;
  let x_1202 : vec4<f32> = u_xlat4;
  let x_1205 : vec4<f32> = u_xlat0;
  let x_1207 : vec3<f32> = ((x_1201 * vec3<f32>(x_1202.x, x_1202.y, x_1202.z)) + vec3<f32>(x_1205.x, x_1205.y, x_1205.w));
  let x_1208 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1207.x, x_1207.y, x_1208.z, x_1207.z);
  let x_1210 : vec4<f32> = u_xlat8;
  let x_1212 : f32 = u_xlat26;
  u_xlat3 = (vec3<f32>(x_1210.x, x_1210.y, x_1210.z) * vec3<f32>(x_1212, x_1212, x_1212));
  let x_1215 : vec3<f32> = u_xlat2;
  let x_1217 : vec4<f32> = u_xlat1;
  let x_1219 : vec3<f32> = (-(x_1215) + vec3<f32>(x_1217.x, x_1217.x, x_1217.x));
  let x_1220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1219.x, x_1219.y, x_1220.z, x_1219.z);
  let x_1222 : f32 = u_xlat27;
  let x_1224 : vec4<f32> = u_xlat1;
  let x_1227 : vec3<f32> = u_xlat2;
  let x_1228 : vec3<f32> = ((vec3<f32>(x_1222, x_1222, x_1222) * vec3<f32>(x_1224.x, x_1224.y, x_1224.w)) + x_1227);
  let x_1229 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
  let x_1233 : vec3<f32> = u_xlat3;
  let x_1234 : vec4<f32> = u_xlat1;
  let x_1237 : vec4<f32> = u_xlat0;
  let x_1239 : vec3<f32> = ((x_1233 * vec3<f32>(x_1234.x, x_1234.y, x_1234.z)) + vec3<f32>(x_1237.x, x_1237.y, x_1237.w));
  let x_1240 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec2<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

