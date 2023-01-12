struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color1 : vec4<f32>,
  x_Color2 : vec4<f32>,
  x_Edge : f32,
  x_Fade : f32,
  x_Fog : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_CameraDepthTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(10) var sampler_Normal : sampler;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(12) var sampler_Noise : sampler;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_Ramp : texture_2d<f32>;

@group(0) @binding(11) var sampler_Ramp : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD9 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat19 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlatb14 : bool;
  var x_434 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat13 : f32;
  var u_xlatb18 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat18;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_41 : vec4<f32> = vs_TEXCOORD5;
  let x_43 : vec4<f32> = vs_TEXCOORD5;
  let x_45 : vec2<f32> = (vec2<f32>(x_41.x, x_41.y) / vec2<f32>(x_43.w, x_43.w));
  let x_46 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_45.x, x_45.y, x_46.z);
  let x_59 : vec3<f32> = u_xlat2;
  let x_61 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, vec2<f32>(x_59.x, x_59.y));
  u_xlat19 = x_61.x;
  let x_69 : f32 = x_18.x_ZBufferParams.z;
  let x_70 : f32 = u_xlat19;
  let x_74 : f32 = x_18.x_ZBufferParams.w;
  u_xlat19 = ((x_69 * x_70) + x_74);
  let x_77 : f32 = u_xlat19;
  u_xlat19 = (1.0f / x_77);
  let x_79 : f32 = u_xlat19;
  let x_82 : f32 = vs_TEXCOORD5.z;
  u_xlat19 = (x_79 + -(x_82));
  let x_85 : f32 = u_xlat19;
  let x_90 : f32 = x_18.x_Edge;
  let x_93 : f32 = x_18.x_Fog;
  let x_96 : f32 = x_18.x_Fade;
  u_xlat2 = (abs(vec3<f32>(x_85, x_85, x_85)) + -(vec3<f32>(x_90, x_93, x_96)));
  let x_100 : vec3<f32> = u_xlat2;
  let x_102 : f32 = x_18.x_Edge;
  let x_104 : f32 = x_18.x_Fog;
  let x_106 : f32 = x_18.x_Fade;
  u_xlat2 = (x_100 / -(vec3<f32>(x_102, x_104, x_106)));
  let x_110 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_110, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_117 : f32 = u_xlat2.y;
  u_xlat19 = (-(x_117) + 1.0f);
  let x_125 : vec4<f32> = x_18.x_Time;
  let x_132 : vec4<f32> = vs_TEXCOORD0;
  let x_134 : vec3<f32> = ((vec3<f32>(x_125.x, x_125.x, x_125.x) * vec3<f32>(0.200000003f, 0.100000001f, 0.200000003f)) + vec3<f32>(x_132.z, x_132.w, x_132.y));
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_138 : vec4<f32> = u_xlat3;
  let x_142 : vec2<f32> = (vec2<f32>(x_138.x, x_138.y) * vec2<f32>(0.5f, 0.5f));
  let x_143 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_142.x, x_143.y, x_142.y);
  let x_151 : vec3<f32> = u_xlat8;
  let x_153 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_151.x, x_151.z));
  u_xlat4 = vec3<f32>(x_153.x, x_153.y, x_153.w);
  let x_156 : f32 = u_xlat4.z;
  let x_158 : f32 = u_xlat4.x;
  u_xlat4.x = (x_156 * x_158);
  let x_161 : vec3<f32> = u_xlat4;
  let x_168 : vec2<f32> = ((vec2<f32>(x_161.x, x_161.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_169 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_168.x, x_168.y, x_169.z);
  let x_171 : vec3<f32> = u_xlat4;
  let x_173 : vec3<f32> = u_xlat4;
  u_xlat8.x = dot(vec2<f32>(x_171.x, x_171.y), vec2<f32>(x_173.x, x_173.y));
  let x_178 : f32 = u_xlat8.x;
  u_xlat8.x = min(x_178, 1.0f);
  let x_182 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_182) + 1.0f);
  let x_187 : f32 = u_xlat8.x;
  u_xlat4.z = sqrt(x_187);
  let x_190 : vec4<f32> = vs_TEXCOORD0;
  let x_191 : vec2<f32> = vec2<f32>(x_190.x, x_190.x);
  let x_192 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_191.x, x_192.y, x_192.z, x_191.y);
  let x_194 : vec3<f32> = u_xlat4;
  let x_198 : vec4<f32> = u_xlat3;
  let x_200 : vec2<f32> = ((vec2<f32>(x_194.x, x_194.y) * vec2<f32>(0.200000003f, 0.200000003f)) + vec2<f32>(x_198.w, x_198.z));
  let x_201 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_200.x, x_201.y, x_200.y);
  let x_204 : f32 = vs_TEXCOORD0.y;
  let x_206 : f32 = x_18.x_Time.x;
  u_xlat3.y = (x_204 + x_206);
  let x_209 : vec3<f32> = u_xlat4;
  let x_211 : vec4<f32> = u_xlat3;
  let x_213 : vec2<f32> = (vec2<f32>(x_209.x, x_209.y) + vec2<f32>(x_211.x, x_211.y));
  let x_214 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_213.x, x_213.y, x_214.z, x_214.w);
  let x_216 : vec4<f32> = u_xlat3;
  let x_218 : vec2<f32> = (vec2<f32>(x_216.x, x_216.y) * vec2<f32>(0.200000003f, 0.200000003f));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_218.x, x_218.y, x_219.z, x_219.w);
  let x_226 : vec4<f32> = u_xlat3;
  let x_228 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_226.x, x_226.y));
  u_xlat3.x = x_228.x;
  let x_236 : vec3<f32> = u_xlat8;
  let x_238 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_236.x, x_236.z));
  u_xlat8.x = x_238.x;
  u_xlat8.z = 0.0f;
  let x_248 : vec3<f32> = u_xlat8;
  let x_250 : vec4<f32> = textureSample(x_Ramp, sampler_Ramp, vec2<f32>(x_248.x, x_248.z));
  u_xlat9 = vec3<f32>(x_250.x, x_250.y, x_250.z);
  let x_253 : vec3<f32> = u_xlat9;
  let x_257 : vec4<f32> = x_18.x_Color2;
  let x_259 : vec3<f32> = (-(x_253) + vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec3<f32> = u_xlat2;
  let x_264 : vec4<f32> = u_xlat5;
  let x_267 : vec3<f32> = u_xlat9;
  u_xlat9 = ((vec3<f32>(x_262.x, x_262.x, x_262.x) * vec3<f32>(x_264.x, x_264.y, x_264.z)) + x_267);
  let x_269 : f32 = u_xlat19;
  let x_271 : f32 = u_xlat3.x;
  u_xlat2.x = (x_269 + -(x_271));
  let x_276 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_276, 0.0f, 1.0f);
  let x_281 : f32 = u_xlat2.x;
  u_xlat20 = ((x_281 * -2.0f) + 3.0f);
  let x_287 : f32 = u_xlat2.x;
  let x_289 : f32 = u_xlat2.x;
  u_xlat2.x = (x_287 * x_289);
  let x_293 : f32 = u_xlat2.x;
  let x_294 : f32 = u_xlat20;
  u_xlat2.x = (x_293 * x_294);
  let x_297 : f32 = u_xlat19;
  let x_299 : f32 = u_xlat2.x;
  u_xlat19 = (x_297 * x_299);
  let x_303 : vec4<f32> = x_18.x_Color1;
  let x_306 : vec4<f32> = x_18.x_Color2;
  let x_309 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) + -(vec3<f32>(x_306.x, x_306.y, x_306.z)));
  let x_310 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : f32 = u_xlat19;
  let x_314 : vec4<f32> = u_xlat5;
  let x_318 : vec4<f32> = x_18.x_Color2;
  let x_320 : vec3<f32> = ((vec3<f32>(x_312, x_312, x_312) * vec3<f32>(x_314.x, x_314.y, x_314.z)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec3<f32> = u_xlat9;
  let x_324 : vec4<f32> = u_xlat5;
  let x_326 : vec3<f32> = (x_323 + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_330 : f32 = u_xlat8.x;
  u_xlat19 = (-(x_330) + 1.0f);
  let x_336 : f32 = u_xlat2.z;
  SV_Target0.w = (-(x_336) + 1.0f);
  let x_341 : vec3<f32> = vs_TEXCOORD4;
  let x_345 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_347 : vec2<f32> = (vec2<f32>(x_341.y, x_341.y) * vec2<f32>(x_345.x, x_345.y));
  let x_348 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_347.x, x_347.y, x_348.z);
  let x_351 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_353 : vec3<f32> = vs_TEXCOORD4;
  let x_356 : vec3<f32> = u_xlat2;
  let x_358 : vec2<f32> = ((vec2<f32>(x_351.x, x_351.y) * vec2<f32>(x_353.x, x_353.x)) + vec2<f32>(x_356.x, x_356.y));
  let x_359 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_358.x, x_358.y, x_359.z);
  let x_363 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_365 : vec3<f32> = vs_TEXCOORD4;
  let x_368 : vec3<f32> = u_xlat2;
  let x_370 : vec2<f32> = ((vec2<f32>(x_363.x, x_363.y) * vec2<f32>(x_365.z, x_365.z)) + vec2<f32>(x_368.x, x_368.y));
  let x_371 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_370.x, x_370.y, x_371.z);
  let x_373 : vec3<f32> = u_xlat2;
  let x_376 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_378 : vec2<f32> = (vec2<f32>(x_373.x, x_373.y) + vec2<f32>(x_376.x, x_376.y));
  let x_379 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_386 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb14 = (x_386 == 1.0f);
  let x_388 : bool = u_xlatb14;
  if (x_388) {
    let x_392 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb14 = (x_392 == 1.0f);
    let x_394 : vec3<f32> = vs_TEXCOORD4;
    let x_398 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_400 : vec3<f32> = (vec3<f32>(x_394.y, x_394.y, x_394.y) * vec3<f32>(x_398.x, x_398.y, x_398.z));
    let x_401 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
    let x_404 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_406 : vec3<f32> = vs_TEXCOORD4;
    let x_409 : vec4<f32> = u_xlat5;
    let x_411 : vec3<f32> = ((vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(x_406.x, x_406.x, x_406.x)) + vec3<f32>(x_409.x, x_409.y, x_409.z));
    let x_412 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
    let x_415 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_417 : vec3<f32> = vs_TEXCOORD4;
    let x_420 : vec4<f32> = u_xlat5;
    let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.z, x_417.z, x_417.z)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
    let x_423 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
    let x_425 : vec4<f32> = u_xlat5;
    let x_428 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_430 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) + vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_431 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
    let x_433 : bool = u_xlatb14;
    if (x_433) {
      let x_437 : vec4<f32> = u_xlat5;
      x_434 = vec3<f32>(x_437.x, x_437.y, x_437.z);
    } else {
      let x_440 : vec3<f32> = vs_TEXCOORD4;
      x_434 = x_440;
    }
    let x_441 : vec3<f32> = x_434;
    let x_442 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
    let x_444 : vec4<f32> = u_xlat5;
    let x_448 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_450 : vec3<f32> = (vec3<f32>(x_444.x, x_444.y, x_444.z) + -(x_448));
    let x_451 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
    let x_453 : vec4<f32> = u_xlat5;
    let x_457 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_458 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) * x_457);
    let x_459 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_459.x, x_458.x, x_458.y, x_458.z);
    let x_463 : f32 = u_xlat5.y;
    u_xlat14 = ((x_463 * 0.25f) + 0.75f);
    let x_469 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_469 * 0.5f) + 0.75f);
    let x_472 : f32 = u_xlat20;
    let x_473 : f32 = u_xlat14;
    u_xlat5.x = max(x_472, x_473);
    let x_484 : vec4<f32> = u_xlat5;
    let x_486 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_484.x, x_484.z, x_484.w));
    u_xlat5 = x_486;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_492 : vec4<f32> = u_xlat5;
  let x_495 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat14 = dot(x_492, x_495);
  let x_497 : f32 = u_xlat14;
  u_xlat14 = clamp(x_497, 0.0f, 1.0f);
  let x_504 : vec3<f32> = u_xlat2;
  let x_506 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_504.x, x_504.y));
  u_xlat2.x = x_506.w;
  let x_509 : f32 = u_xlat14;
  let x_511 : f32 = u_xlat2.x;
  u_xlat2.x = (x_509 * x_511);
  let x_515 : vec3<f32> = vs_TEXCOORD1;
  let x_516 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_515, x_516);
  let x_520 : vec3<f32> = vs_TEXCOORD2;
  let x_521 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_520, x_521);
  let x_525 : vec3<f32> = vs_TEXCOORD3;
  let x_526 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_525, x_526);
  let x_529 : vec4<f32> = u_xlat5;
  let x_531 : vec4<f32> = u_xlat5;
  u_xlat8.x = dot(vec3<f32>(x_529.x, x_529.y, x_529.z), vec3<f32>(x_531.x, x_531.y, x_531.z));
  let x_536 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_536);
  let x_539 : vec3<f32> = u_xlat8;
  let x_541 : vec4<f32> = u_xlat5;
  u_xlat8 = (vec3<f32>(x_539.x, x_539.x, x_539.x) * vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec3<f32> = u_xlat2;
  let x_548 : vec4<f32> = x_18.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_544.x, x_544.x, x_544.x) * vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : vec4<f32> = u_xlat3;
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
  u_xlat2.x = ((-(x_579) * 0.959999979f) + 0.959999979f);
  let x_585 : vec3<f32> = u_xlat2;
  let x_587 : vec4<f32> = u_xlat3;
  let x_589 : vec3<f32> = (vec3<f32>(x_585.x, x_585.x, x_585.x) * vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_590 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : f32 = u_xlat19;
  let x_596 : f32 = x_18.x_Glossiness;
  u_xlat19 = ((-(x_592) * x_596) + 1.0f);
  let x_599 : vec3<f32> = u_xlat0;
  let x_600 : f32 = u_xlat18;
  let x_605 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_599 * vec3<f32>(x_600, x_600, x_600)) + vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec3<f32> = u_xlat0;
  let x_609 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_608, x_609);
  let x_611 : f32 = u_xlat18;
  u_xlat18 = max(x_611, 0.001f);
  let x_614 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_614);
  let x_616 : f32 = u_xlat18;
  let x_618 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_616, x_616, x_616) * x_618);
  let x_620 : vec3<f32> = u_xlat8;
  let x_621 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_620, x_621);
  let x_623 : vec3<f32> = u_xlat8;
  let x_625 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_623, vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_630 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_630, 0.0f, 1.0f);
  let x_634 : vec3<f32> = u_xlat8;
  let x_635 : vec3<f32> = u_xlat0;
  u_xlat7 = dot(x_634, x_635);
  let x_637 : f32 = u_xlat7;
  u_xlat7 = clamp(x_637, 0.0f, 1.0f);
  let x_640 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_642 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_640.x, x_640.y, x_640.z), x_642);
  let x_646 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_646, 0.0f, 1.0f);
  let x_651 : f32 = u_xlat0.x;
  let x_653 : f32 = u_xlat0.x;
  u_xlat6.x = (x_651 * x_653);
  let x_656 : vec3<f32> = u_xlat6;
  let x_658 : f32 = u_xlat19;
  u_xlat6.x = dot(vec2<f32>(x_656.x, x_656.x), vec2<f32>(x_658, x_658));
  let x_663 : f32 = u_xlat6.x;
  u_xlat6.x = (x_663 + -0.5f);
  let x_669 : f32 = u_xlat1.x;
  u_xlat12 = (-(x_669) + 1.0f);
  let x_673 : f32 = u_xlat12;
  let x_674 : f32 = u_xlat12;
  u_xlat13 = (x_673 * x_674);
  let x_676 : f32 = u_xlat13;
  let x_677 : f32 = u_xlat13;
  u_xlat13 = (x_676 * x_677);
  let x_679 : f32 = u_xlat12;
  let x_680 : f32 = u_xlat13;
  u_xlat12 = (x_679 * x_680);
  let x_683 : f32 = u_xlat6.x;
  let x_684 : f32 = u_xlat12;
  u_xlat12 = ((x_683 * x_684) + 1.0f);
  let x_687 : f32 = u_xlat18;
  u_xlat13 = (-(abs(x_687)) + 1.0f);
  let x_691 : f32 = u_xlat13;
  let x_692 : f32 = u_xlat13;
  u_xlat2.x = (x_691 * x_692);
  let x_696 : f32 = u_xlat2.x;
  let x_698 : f32 = u_xlat2.x;
  u_xlat2.x = (x_696 * x_698);
  let x_701 : f32 = u_xlat13;
  let x_703 : f32 = u_xlat2.x;
  u_xlat13 = (x_701 * x_703);
  let x_706 : f32 = u_xlat6.x;
  let x_707 : f32 = u_xlat13;
  u_xlat6.x = ((x_706 * x_707) + 1.0f);
  let x_712 : f32 = u_xlat6.x;
  let x_713 : f32 = u_xlat12;
  u_xlat6.x = (x_712 * x_713);
  let x_716 : f32 = u_xlat19;
  let x_717 : f32 = u_xlat19;
  u_xlat12 = (x_716 * x_717);
  let x_719 : f32 = u_xlat12;
  u_xlat12 = max(x_719, 0.002f);
  let x_722 : f32 = u_xlat12;
  u_xlat13 = (-(x_722) + 1.0f);
  let x_725 : f32 = u_xlat18;
  let x_727 : f32 = u_xlat13;
  let x_729 : f32 = u_xlat12;
  u_xlat19 = ((abs(x_725) * x_727) + x_729);
  let x_732 : f32 = u_xlat1.x;
  let x_733 : f32 = u_xlat13;
  let x_735 : f32 = u_xlat12;
  u_xlat13 = ((x_732 * x_733) + x_735);
  let x_737 : f32 = u_xlat18;
  let x_739 : f32 = u_xlat13;
  u_xlat18 = (abs(x_737) * x_739);
  let x_742 : f32 = u_xlat1.x;
  let x_743 : f32 = u_xlat19;
  let x_745 : f32 = u_xlat18;
  u_xlat18 = ((x_742 * x_743) + x_745);
  let x_747 : f32 = u_xlat18;
  u_xlat18 = (x_747 + 0.00001f);
  let x_750 : f32 = u_xlat18;
  u_xlat18 = (0.5f / x_750);
  let x_752 : f32 = u_xlat12;
  let x_753 : f32 = u_xlat12;
  u_xlat12 = (x_752 * x_753);
  let x_755 : f32 = u_xlat7;
  let x_756 : f32 = u_xlat12;
  let x_758 : f32 = u_xlat7;
  u_xlat13 = ((x_755 * x_756) + -(x_758));
  let x_761 : f32 = u_xlat13;
  let x_762 : f32 = u_xlat7;
  u_xlat7 = ((x_761 * x_762) + 1.0f);
  let x_765 : f32 = u_xlat12;
  u_xlat12 = (x_765 * 0.318309873f);
  let x_768 : f32 = u_xlat7;
  let x_769 : f32 = u_xlat7;
  u_xlat7 = ((x_768 * x_769) + 0.0000001f);
  let x_773 : f32 = u_xlat12;
  let x_774 : f32 = u_xlat7;
  u_xlat12 = (x_773 / x_774);
  let x_776 : f32 = u_xlat12;
  let x_777 : f32 = u_xlat18;
  u_xlat6.y = (x_776 * x_777);
  let x_780 : vec3<f32> = u_xlat1;
  let x_782 : vec3<f32> = u_xlat6;
  let x_784 : vec2<f32> = (vec2<f32>(x_780.x, x_780.x) * vec2<f32>(x_782.x, x_782.y));
  let x_785 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_784.x, x_784.y, x_785.z);
  let x_788 : f32 = u_xlat6.y;
  u_xlat12 = (x_788 * 3.141592741f);
  let x_791 : f32 = u_xlat12;
  u_xlat12 = max(x_791, 0.0f);
  let x_793 : vec4<f32> = u_xlat5;
  let x_795 : vec4<f32> = u_xlat5;
  u_xlat18 = dot(vec3<f32>(x_793.x, x_793.y, x_793.z), vec3<f32>(x_795.x, x_795.y, x_795.z));
  let x_799 : f32 = u_xlat18;
  u_xlatb18 = !((x_799 == 0.0f));
  let x_801 : bool = u_xlatb18;
  u_xlat18 = select(0.0f, 1.0f, x_801);
  let x_803 : f32 = u_xlat18;
  let x_804 : f32 = u_xlat12;
  u_xlat12 = (x_803 * x_804);
  let x_806 : vec3<f32> = u_xlat6;
  let x_808 : vec3<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_806.x, x_806.x, x_806.x) * x_808);
  let x_810 : vec3<f32> = u_xlat4;
  let x_811 : f32 = u_xlat12;
  u_xlat6 = (x_810 * vec3<f32>(x_811, x_811, x_811));
  let x_815 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_815) + 1.0f);
  let x_820 : f32 = u_xlat0.x;
  let x_822 : f32 = u_xlat0.x;
  u_xlat19 = (x_820 * x_822);
  let x_824 : f32 = u_xlat19;
  let x_825 : f32 = u_xlat19;
  u_xlat19 = (x_824 * x_825);
  let x_828 : f32 = u_xlat0.x;
  let x_829 : f32 = u_xlat19;
  u_xlat0.x = (x_828 * x_829);
  let x_832 : vec4<f32> = u_xlat5;
  u_xlat2 = (-(vec3<f32>(x_832.x, x_832.y, x_832.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_837 : vec3<f32> = u_xlat2;
  let x_838 : vec3<f32> = u_xlat0;
  let x_841 : vec4<f32> = u_xlat5;
  u_xlat2 = ((x_837 * vec3<f32>(x_838.x, x_838.x, x_838.x)) + vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : vec3<f32> = u_xlat6;
  let x_845 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_844 * x_845);
  let x_847 : vec4<f32> = u_xlat3;
  let x_849 : vec3<f32> = u_xlat1;
  let x_851 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_847.x, x_847.y, x_847.z) * x_849) + x_851);
  let x_854 : f32 = vs_TEXCOORD9;
  let x_856 : f32 = x_18.x_ProjectionParams.y;
  u_xlat18 = (x_854 / x_856);
  let x_858 : f32 = u_xlat18;
  u_xlat18 = (-(x_858) + 1.0f);
  let x_861 : f32 = u_xlat18;
  let x_863 : f32 = x_18.x_ProjectionParams.z;
  u_xlat18 = (x_861 * x_863);
  let x_865 : f32 = u_xlat18;
  u_xlat18 = max(x_865, 0.0f);
  let x_867 : f32 = u_xlat18;
  let x_870 : f32 = x_18.unity_FogParams.x;
  u_xlat18 = (x_867 * x_870);
  let x_872 : f32 = u_xlat18;
  let x_873 : f32 = u_xlat18;
  u_xlat18 = (x_872 * -(x_873));
  let x_876 : f32 = u_xlat18;
  u_xlat18 = exp2(x_876);
  let x_878 : vec3<f32> = u_xlat0;
  let x_879 : f32 = u_xlat18;
  let x_881 : vec3<f32> = (x_878 * vec3<f32>(x_879, x_879, x_879));
  let x_882 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(5) vs_TEXCOORD5_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(6) vs_TEXCOORD9_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD9 = vs_TEXCOORD9_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

