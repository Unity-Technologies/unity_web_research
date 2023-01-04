struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
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
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat23 : f32;

var<private> u_xlatb23 : bool;

var<private> u_xlat24 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat18 : vec2<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlatb22 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_292 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_32 : f32 = u_xlat0.w;
  let x_42 : f32 = x_37.x_Color.w;
  SV_Target0.w = (x_32 * x_42);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_37.x_Color;
  u_xlat1 = (vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = x_37.x_Color;
  let x_58 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.y, x_58.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : f32 = x_37.x_Metallic;
  let x_70 : f32 = x_37.x_Metallic;
  let x_72 : f32 = x_37.x_Metallic;
  let x_73 : vec3<f32> = vec3<f32>(x_68, x_70, x_72);
  let x_78 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : f32 = x_37.x_Metallic;
  u_xlat21 = ((-(x_88) * 0.959999979f) + 0.959999979f);
  let x_93 : f32 = u_xlat21;
  let x_95 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_93, x_93, x_93) * x_95);
  let x_98 : vec4<f32> = vs_TEXCOORD4;
  let x_100 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_103);
  let x_106 : f32 = u_xlat21;
  let x_108 : vec4<f32> = vs_TEXCOORD4;
  let x_110 : vec3<f32> = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_114 : vec4<f32> = vs_TEXCOORD1;
  let x_116 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_114.x, x_114.y, x_114.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_119);
  let x_122 : f32 = u_xlat21;
  let x_124 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_122, x_122, x_122) * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_130 : vec3<f32> = vs_TEXCOORD5;
  let x_135 : vec4<f32> = x_37.unity_WorldToLight[1i];
  let x_137 : vec2<f32> = (vec2<f32>(x_130.y, x_130.y) * vec2<f32>(x_135.x, x_135.y));
  let x_138 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_137.x, x_137.y, x_138.z);
  let x_142 : vec4<f32> = x_37.unity_WorldToLight[0i];
  let x_144 : vec3<f32> = vs_TEXCOORD5;
  let x_147 : vec3<f32> = u_xlat4;
  let x_149 : vec2<f32> = ((vec2<f32>(x_142.x, x_142.y) * vec2<f32>(x_144.x, x_144.x)) + vec2<f32>(x_147.x, x_147.y));
  let x_150 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_149.x, x_149.y, x_150.z);
  let x_154 : vec4<f32> = x_37.unity_WorldToLight[2i];
  let x_156 : vec3<f32> = vs_TEXCOORD5;
  let x_159 : vec3<f32> = u_xlat4;
  let x_161 : vec2<f32> = ((vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_156.z, x_156.z)) + vec2<f32>(x_159.x, x_159.y));
  let x_162 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_161.x, x_161.y, x_162.z);
  let x_164 : vec3<f32> = u_xlat4;
  let x_168 : vec4<f32> = x_37.unity_WorldToLight[3i];
  let x_170 : vec2<f32> = (vec2<f32>(x_164.x, x_164.y) + vec2<f32>(x_168.x, x_168.y));
  let x_171 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_170.x, x_170.y, x_171.z);
  let x_174 : vec3<f32> = vs_TEXCOORD5;
  let x_178 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  let x_179 : vec3<f32> = (-(x_174) + x_178);
  let x_180 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_186 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat6.x = x_186;
  let x_190 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat6.y = x_190;
  let x_194 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat6.z = x_194;
  let x_197 : vec4<f32> = u_xlat5;
  let x_199 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), x_199);
  let x_201 : vec3<f32> = vs_TEXCOORD5;
  let x_203 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_206 : vec3<f32> = (x_201 + -(vec3<f32>(x_203.x, x_203.y, x_203.z)));
  let x_207 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_210 : vec4<f32> = u_xlat5;
  let x_212 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_215);
  let x_217 : f32 = u_xlat22;
  let x_219 : f32 = u_xlat23;
  u_xlat23 = (-(x_217) + x_219);
  let x_222 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_223 : f32 = u_xlat23;
  let x_225 : f32 = u_xlat22;
  u_xlat22 = ((x_222 * x_223) + x_225);
  let x_227 : f32 = u_xlat22;
  let x_229 : f32 = x_37.x_LightShadowData.z;
  let x_232 : f32 = x_37.x_LightShadowData.w;
  u_xlat22 = ((x_227 * x_229) + x_232);
  let x_234 : f32 = u_xlat22;
  u_xlat22 = clamp(x_234, 0.0f, 1.0f);
  let x_243 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_243 == 1.0f);
  let x_245 : bool = u_xlatb23;
  if (x_245) {
    let x_249 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_249 == 1.0f);
    let x_251 : vec3<f32> = vs_TEXCOORD5;
    let x_255 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_257 : vec3<f32> = (vec3<f32>(x_251.y, x_251.y, x_251.y) * vec3<f32>(x_255.x, x_255.y, x_255.z));
    let x_258 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
    let x_261 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_263 : vec3<f32> = vs_TEXCOORD5;
    let x_266 : vec4<f32> = u_xlat5;
    let x_268 : vec3<f32> = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.x, x_263.x, x_263.x)) + vec3<f32>(x_266.x, x_266.y, x_266.z));
    let x_269 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_272 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_274 : vec3<f32> = vs_TEXCOORD5;
    let x_277 : vec4<f32> = u_xlat5;
    let x_279 : vec3<f32> = ((vec3<f32>(x_272.x, x_272.y, x_272.z) * vec3<f32>(x_274.z, x_274.z, x_274.z)) + vec3<f32>(x_277.x, x_277.y, x_277.z));
    let x_280 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
    let x_282 : vec4<f32> = u_xlat5;
    let x_285 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_287 : vec3<f32> = (vec3<f32>(x_282.x, x_282.y, x_282.z) + vec3<f32>(x_285.x, x_285.y, x_285.z));
    let x_288 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
    let x_290 : bool = u_xlatb23;
    if (x_290) {
      let x_295 : vec4<f32> = u_xlat5;
      x_292 = vec3<f32>(x_295.x, x_295.y, x_295.z);
    } else {
      let x_298 : vec3<f32> = vs_TEXCOORD5;
      x_292 = x_298;
    }
    let x_299 : vec3<f32> = x_292;
    let x_300 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
    let x_302 : vec4<f32> = u_xlat5;
    let x_306 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_308 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + -(x_306));
    let x_309 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
    let x_311 : vec4<f32> = u_xlat5;
    let x_315 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_316 : vec3<f32> = (vec3<f32>(x_311.x, x_311.y, x_311.z) * x_315);
    let x_317 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_317.x, x_316.x, x_316.y, x_316.z);
    let x_320 : f32 = u_xlat5.y;
    u_xlat23 = ((x_320 * 0.25f) + 0.75f);
    let x_327 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_327 * 0.5f) + 0.75f);
    let x_331 : f32 = u_xlat23;
    let x_332 : f32 = u_xlat24;
    u_xlat5.x = max(x_331, x_332);
    let x_343 : vec4<f32> = u_xlat5;
    let x_345 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_343.x, x_343.z, x_343.w));
    u_xlat5 = x_345;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_351 : vec4<f32> = u_xlat5;
  let x_353 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_351, x_353);
  let x_355 : f32 = u_xlat23;
  u_xlat23 = clamp(x_355, 0.0f, 1.0f);
  let x_360 : vec4<f32> = vs_TEXCOORD7;
  let x_362 : vec4<f32> = vs_TEXCOORD7;
  u_xlat18 = (vec2<f32>(x_360.x, x_360.y) / vec2<f32>(x_362.w, x_362.w));
  let x_370 : vec2<f32> = u_xlat18;
  let x_371 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_370);
  u_xlat24 = x_371.x;
  let x_373 : f32 = u_xlat23;
  let x_374 : f32 = u_xlat24;
  u_xlat23 = (x_373 + -(x_374));
  let x_377 : f32 = u_xlat22;
  let x_378 : f32 = u_xlat23;
  let x_380 : f32 = u_xlat24;
  u_xlat22 = ((x_377 * x_378) + x_380);
  let x_387 : vec3<f32> = u_xlat4;
  let x_389 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_387.x, x_387.y));
  u_xlat23 = x_389.w;
  let x_391 : f32 = u_xlat22;
  let x_392 : f32 = u_xlat23;
  u_xlat22 = (x_391 * x_392);
  let x_394 : f32 = u_xlat22;
  let x_398 : vec4<f32> = x_37.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_394, x_394, x_394) * vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_403 : f32 = x_37.x_Glossiness;
  u_xlat22 = (-(x_403) + 1.0f);
  let x_409 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_409;
  let x_413 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_413;
  let x_416 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_416;
  let x_418 : vec4<f32> = vs_TEXCOORD1;
  let x_421 : f32 = u_xlat21;
  let x_424 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_418.x, x_418.y, x_418.z)) * vec3<f32>(x_421, x_421, x_421)) + vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec3<f32> = u_xlat6;
  let x_428 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_427, x_428);
  let x_430 : f32 = u_xlat21;
  u_xlat21 = max(x_430, 0.001f);
  let x_433 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_433);
  let x_435 : f32 = u_xlat21;
  let x_437 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_435, x_435, x_435) * x_437);
  let x_439 : vec4<f32> = u_xlat2;
  let x_441 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_439.x, x_439.y, x_439.z), -(x_441));
  let x_444 : vec4<f32> = u_xlat2;
  let x_446 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_449 : f32 = u_xlat23;
  u_xlat23 = clamp(x_449, 0.0f, 1.0f);
  let x_451 : vec4<f32> = u_xlat2;
  let x_453 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_451.x, x_451.y, x_451.z), x_453);
  let x_457 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_457, 0.0f, 1.0f);
  let x_461 : vec4<f32> = u_xlat5;
  let x_463 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), x_463);
  let x_465 : f32 = u_xlat9;
  u_xlat9 = clamp(x_465, 0.0f, 1.0f);
  let x_468 : f32 = u_xlat9;
  let x_469 : f32 = u_xlat9;
  u_xlat16 = (x_468 * x_469);
  let x_471 : f32 = u_xlat16;
  let x_473 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_471, x_471), vec2<f32>(x_473, x_473));
  let x_476 : f32 = u_xlat16;
  u_xlat16 = (x_476 + -0.5f);
  let x_479 : f32 = u_xlat23;
  u_xlat3.x = (-(x_479) + 1.0f);
  let x_485 : f32 = u_xlat3.x;
  let x_487 : f32 = u_xlat3.x;
  u_xlat10 = (x_485 * x_487);
  let x_489 : f32 = u_xlat10;
  let x_490 : f32 = u_xlat10;
  u_xlat10 = (x_489 * x_490);
  let x_493 : f32 = u_xlat3.x;
  let x_494 : f32 = u_xlat10;
  u_xlat3.x = (x_493 * x_494);
  let x_497 : f32 = u_xlat16;
  let x_499 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_497 * x_499) + 1.0f);
  let x_503 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_503)) + 1.0f);
  let x_508 : f32 = u_xlat10;
  let x_509 : f32 = u_xlat10;
  u_xlat17 = (x_508 * x_509);
  let x_511 : f32 = u_xlat17;
  let x_512 : f32 = u_xlat17;
  u_xlat17 = (x_511 * x_512);
  let x_514 : f32 = u_xlat10;
  let x_515 : f32 = u_xlat17;
  u_xlat10 = (x_514 * x_515);
  let x_517 : f32 = u_xlat16;
  let x_518 : f32 = u_xlat10;
  u_xlat16 = ((x_517 * x_518) + 1.0f);
  let x_521 : f32 = u_xlat16;
  let x_523 : f32 = u_xlat3.x;
  u_xlat16 = (x_521 * x_523);
  let x_525 : f32 = u_xlat23;
  let x_526 : f32 = u_xlat16;
  u_xlat16 = (x_525 * x_526);
  let x_528 : f32 = u_xlat22;
  let x_529 : f32 = u_xlat22;
  u_xlat22 = (x_528 * x_529);
  let x_531 : f32 = u_xlat22;
  u_xlat22 = max(x_531, 0.002f);
  let x_534 : f32 = u_xlat22;
  u_xlat3.x = (-(x_534) + 1.0f);
  let x_538 : f32 = u_xlat21;
  let x_541 : f32 = u_xlat3.x;
  let x_543 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_538) * x_541) + x_543);
  let x_545 : f32 = u_xlat23;
  let x_547 : f32 = u_xlat3.x;
  let x_549 : f32 = u_xlat22;
  u_xlat3.x = ((x_545 * x_547) + x_549);
  let x_552 : f32 = u_xlat21;
  let x_555 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_552) * x_555);
  let x_557 : f32 = u_xlat23;
  let x_558 : f32 = u_xlat10;
  let x_560 : f32 = u_xlat21;
  u_xlat21 = ((x_557 * x_558) + x_560);
  let x_562 : f32 = u_xlat21;
  u_xlat21 = (x_562 + 0.00001f);
  let x_565 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_565);
  let x_567 : f32 = u_xlat22;
  let x_568 : f32 = u_xlat22;
  u_xlat22 = (x_567 * x_568);
  let x_571 : f32 = u_xlat2.x;
  let x_572 : f32 = u_xlat22;
  let x_575 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_571 * x_572) + -(x_575));
  let x_580 : f32 = u_xlat3.x;
  let x_582 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_580 * x_582) + 1.0f);
  let x_586 : f32 = u_xlat22;
  u_xlat22 = (x_586 * 0.318309873f);
  let x_590 : f32 = u_xlat2.x;
  let x_592 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_590 * x_592) + 0.0000001f);
  let x_597 : f32 = u_xlat22;
  let x_599 : f32 = u_xlat2.x;
  u_xlat22 = (x_597 / x_599);
  let x_601 : f32 = u_xlat21;
  let x_602 : f32 = u_xlat22;
  u_xlat21 = (x_601 * x_602);
  let x_604 : f32 = u_xlat23;
  let x_605 : f32 = u_xlat21;
  u_xlat21 = (x_604 * x_605);
  let x_607 : f32 = u_xlat21;
  u_xlat21 = (x_607 * 3.141592741f);
  let x_610 : f32 = u_xlat21;
  u_xlat21 = max(x_610, 0.0f);
  let x_612 : vec4<f32> = u_xlat0;
  let x_614 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_612.x, x_612.y, x_612.z), vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_618 : f32 = u_xlat22;
  u_xlatb22 = !((x_618 == 0.0f));
  let x_620 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_620);
  let x_622 : f32 = u_xlat21;
  let x_623 : f32 = u_xlat22;
  u_xlat21 = (x_622 * x_623);
  let x_625 : f32 = u_xlat16;
  let x_627 : vec3<f32> = u_xlat4;
  let x_628 : vec3<f32> = (vec3<f32>(x_625, x_625, x_625) * x_627);
  let x_629 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_628.x, x_629.y, x_628.y, x_628.z);
  let x_631 : vec3<f32> = u_xlat4;
  let x_632 : f32 = u_xlat21;
  u_xlat3 = (x_631 * vec3<f32>(x_632, x_632, x_632));
  let x_635 : f32 = u_xlat9;
  u_xlat21 = (-(x_635) + 1.0f);
  let x_638 : f32 = u_xlat21;
  let x_639 : f32 = u_xlat21;
  u_xlat22 = (x_638 * x_639);
  let x_641 : f32 = u_xlat22;
  let x_642 : f32 = u_xlat22;
  u_xlat22 = (x_641 * x_642);
  let x_644 : f32 = u_xlat21;
  let x_645 : f32 = u_xlat22;
  u_xlat21 = (x_644 * x_645);
  let x_647 : vec4<f32> = u_xlat0;
  u_xlat4 = (-(vec3<f32>(x_647.x, x_647.y, x_647.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_652 : vec3<f32> = u_xlat4;
  let x_653 : f32 = u_xlat21;
  let x_656 : vec4<f32> = u_xlat0;
  let x_658 : vec3<f32> = ((x_652 * vec3<f32>(x_653, x_653, x_653)) + vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_659 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_658.x, x_658.y, x_658.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat0;
  let x_663 : vec3<f32> = u_xlat3;
  let x_664 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) * x_663);
  let x_665 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
  let x_667 : vec3<f32> = u_xlat1;
  let x_668 : vec4<f32> = u_xlat2;
  let x_671 : vec4<f32> = u_xlat0;
  let x_673 : vec3<f32> = ((x_667 * vec3<f32>(x_668.x, x_668.z, x_668.w)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

