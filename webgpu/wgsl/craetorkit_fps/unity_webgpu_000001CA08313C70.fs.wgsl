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
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  @size(8)
  padding_3 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat24 : f32;
  var u_xlatb24 : bool;
  var x_358 : vec3<f32>;
  var u_xlat18 : vec2<f32>;
  var u_xlat7 : f32;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
  var u_xlatb22 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  let x_53 : vec3<f32> = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_54 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_53.x, x_53.y, x_53.z, x_54.w);
  let x_57 : vec4<f32> = x_46.x_Color;
  let x_59 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_59) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  let x_66 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_64.x, x_64.x, x_64.x) * x_66) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_75 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_75) * 0.959999979f) + 0.959999979f);
  let x_81 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = u_xlat2;
  let x_85 : vec3<f32> = (vec3<f32>(x_81.x, x_81.x, x_81.x) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_86.y, x_85.y, x_85.z);
  let x_93 : vec4<f32> = vs_TEXCOORD0;
  let x_95 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_93.x, x_93.y));
  let x_96 : vec3<f32> = vec3<f32>(x_95.x, x_95.y, x_95.w);
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_101 : f32 = u_xlat2.z;
  let x_103 : f32 = u_xlat2.x;
  u_xlat2.x = (x_101 * x_103);
  let x_106 : vec4<f32> = u_xlat2;
  let x_113 : vec2<f32> = ((vec2<f32>(x_106.x, x_106.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_114.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_121 : f32 = x_46.x_BumpScale;
  let x_123 : vec2<f32> = (vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_121, x_121));
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_123.x, x_123.y, x_124.z, x_124.w);
  let x_127 : vec4<f32> = u_xlat2;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec2<f32>(x_127.x, x_127.y), vec2<f32>(x_129.x, x_129.y));
  let x_132 : f32 = u_xlat22;
  u_xlat22 = min(x_132, 1.0f);
  let x_135 : f32 = u_xlat22;
  u_xlat22 = (-(x_135) + 1.0f);
  let x_138 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_138);
  let x_141 : vec4<f32> = u_xlat2;
  let x_144 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_148 : vec4<f32> = vs_TEXCOORD2;
  let x_150 : vec4<f32> = u_xlat2;
  let x_153 : vec3<f32> = u_xlat9;
  let x_154 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + x_153);
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = vs_TEXCOORD4;
  let x_160 : f32 = u_xlat22;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_168 : vec4<f32> = u_xlat2;
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat22 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat22;
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_188);
  let x_191 : f32 = u_xlat22;
  let x_193 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_191, x_191, x_191) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_199 : vec3<f32> = vs_TEXCOORD5;
  let x_204 : vec4<f32> = x_46.unity_WorldToLight[1i];
  let x_206 : vec2<f32> = (vec2<f32>(x_199.y, x_199.y) * vec2<f32>(x_204.x, x_204.y));
  let x_207 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_206.x, x_206.y, x_207.z);
  let x_211 : vec4<f32> = x_46.unity_WorldToLight[0i];
  let x_213 : vec3<f32> = vs_TEXCOORD5;
  let x_216 : vec3<f32> = u_xlat4;
  let x_218 : vec2<f32> = ((vec2<f32>(x_211.x, x_211.y) * vec2<f32>(x_213.x, x_213.x)) + vec2<f32>(x_216.x, x_216.y));
  let x_219 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_218.x, x_218.y, x_219.z);
  let x_223 : vec4<f32> = x_46.unity_WorldToLight[2i];
  let x_225 : vec3<f32> = vs_TEXCOORD5;
  let x_228 : vec3<f32> = u_xlat4;
  let x_230 : vec2<f32> = ((vec2<f32>(x_223.x, x_223.y) * vec2<f32>(x_225.z, x_225.z)) + vec2<f32>(x_228.x, x_228.y));
  let x_231 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_230.x, x_230.y, x_231.z);
  let x_233 : vec3<f32> = u_xlat4;
  let x_237 : vec4<f32> = x_46.unity_WorldToLight[3i];
  let x_239 : vec2<f32> = (vec2<f32>(x_233.x, x_233.y) + vec2<f32>(x_237.x, x_237.y));
  let x_240 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_239.x, x_239.y, x_240.z);
  let x_243 : vec3<f32> = vs_TEXCOORD5;
  let x_247 : vec3<f32> = x_46.x_WorldSpaceCameraPos;
  let x_248 : vec3<f32> = (-(x_243) + x_247);
  let x_249 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_248.x, x_248.y, x_248.z, x_249.w);
  let x_254 : f32 = x_46.unity_MatrixV[0i].z;
  u_xlat6.x = x_254;
  let x_257 : f32 = x_46.unity_MatrixV[1i].z;
  u_xlat6.y = x_257;
  let x_261 : f32 = x_46.unity_MatrixV[2i].z;
  u_xlat6.z = x_261;
  let x_264 : vec4<f32> = u_xlat5;
  let x_266 : vec3<f32> = u_xlat6;
  u_xlat23 = dot(vec3<f32>(x_264.x, x_264.y, x_264.z), x_266);
  let x_268 : vec3<f32> = vs_TEXCOORD5;
  let x_270 : vec4<f32> = x_46.unity_ShadowFadeCenterAndType;
  let x_273 : vec3<f32> = (x_268 + -(vec3<f32>(x_270.x, x_270.y, x_270.z)));
  let x_274 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : vec4<f32> = u_xlat5;
  let x_279 : vec4<f32> = u_xlat5;
  u_xlat24 = dot(vec3<f32>(x_277.x, x_277.y, x_277.z), vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : f32 = u_xlat24;
  u_xlat24 = sqrt(x_282);
  let x_284 : f32 = u_xlat23;
  let x_286 : f32 = u_xlat24;
  u_xlat24 = (-(x_284) + x_286);
  let x_290 : f32 = x_46.unity_ShadowFadeCenterAndType.w;
  let x_291 : f32 = u_xlat24;
  let x_293 : f32 = u_xlat23;
  u_xlat23 = ((x_290 * x_291) + x_293);
  let x_295 : f32 = u_xlat23;
  let x_297 : f32 = x_46.x_LightShadowData.z;
  let x_300 : f32 = x_46.x_LightShadowData.w;
  u_xlat23 = ((x_295 * x_297) + x_300);
  let x_302 : f32 = u_xlat23;
  u_xlat23 = clamp(x_302, 0.0f, 1.0f);
  let x_310 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb24 = (x_310 == 1.0f);
  let x_312 : bool = u_xlatb24;
  if (x_312) {
    let x_316 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb24 = (x_316 == 1.0f);
    let x_318 : vec3<f32> = vs_TEXCOORD5;
    let x_322 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_324 : vec3<f32> = (vec3<f32>(x_318.y, x_318.y, x_318.y) * vec3<f32>(x_322.x, x_322.y, x_322.z));
    let x_325 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
    let x_328 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_330 : vec3<f32> = vs_TEXCOORD5;
    let x_333 : vec4<f32> = u_xlat5;
    let x_335 : vec3<f32> = ((vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(x_330.x, x_330.x, x_330.x)) + vec3<f32>(x_333.x, x_333.y, x_333.z));
    let x_336 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
    let x_339 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_341 : vec3<f32> = vs_TEXCOORD5;
    let x_344 : vec4<f32> = u_xlat5;
    let x_346 : vec3<f32> = ((vec3<f32>(x_339.x, x_339.y, x_339.z) * vec3<f32>(x_341.z, x_341.z, x_341.z)) + vec3<f32>(x_344.x, x_344.y, x_344.z));
    let x_347 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
    let x_349 : vec4<f32> = u_xlat5;
    let x_352 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_354 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) + vec3<f32>(x_352.x, x_352.y, x_352.z));
    let x_355 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
    let x_357 : bool = u_xlatb24;
    if (x_357) {
      let x_361 : vec4<f32> = u_xlat5;
      x_358 = vec3<f32>(x_361.x, x_361.y, x_361.z);
    } else {
      let x_364 : vec3<f32> = vs_TEXCOORD5;
      x_358 = x_364;
    }
    let x_365 : vec3<f32> = x_358;
    let x_366 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
    let x_368 : vec4<f32> = u_xlat5;
    let x_372 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_374 : vec3<f32> = (vec3<f32>(x_368.x, x_368.y, x_368.z) + -(x_372));
    let x_375 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
    let x_377 : vec4<f32> = u_xlat5;
    let x_381 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_382 : vec3<f32> = (vec3<f32>(x_377.x, x_377.y, x_377.z) * x_381);
    let x_383 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_383.x, x_382.x, x_382.y, x_382.z);
    let x_386 : f32 = u_xlat5.y;
    u_xlat24 = ((x_386 * 0.25f) + 0.75f);
    let x_394 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat18.x = ((x_394 * 0.5f) + 0.75f);
    let x_399 : f32 = u_xlat24;
    let x_401 : f32 = u_xlat18.x;
    u_xlat5.x = max(x_399, x_401);
    let x_412 : vec4<f32> = u_xlat5;
    let x_414 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_412.x, x_412.z, x_412.w));
    u_xlat5 = x_414;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_420 : vec4<f32> = u_xlat5;
  let x_422 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat24 = dot(x_420, x_422);
  let x_424 : f32 = u_xlat24;
  u_xlat24 = clamp(x_424, 0.0f, 1.0f);
  let x_427 : vec4<f32> = vs_TEXCOORD7;
  let x_429 : vec4<f32> = vs_TEXCOORD7;
  u_xlat18 = (vec2<f32>(x_427.x, x_427.y) / vec2<f32>(x_429.w, x_429.w));
  let x_437 : vec2<f32> = u_xlat18;
  let x_438 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_437);
  u_xlat18.x = x_438.x;
  let x_441 : f32 = u_xlat24;
  let x_443 : f32 = u_xlat18.x;
  u_xlat24 = (x_441 + -(x_443));
  let x_446 : f32 = u_xlat23;
  let x_447 : f32 = u_xlat24;
  let x_450 : f32 = u_xlat18.x;
  u_xlat23 = ((x_446 * x_447) + x_450);
  let x_457 : vec3<f32> = u_xlat4;
  let x_459 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_457.x, x_457.y));
  u_xlat24 = x_459.w;
  let x_461 : f32 = u_xlat23;
  let x_462 : f32 = u_xlat24;
  u_xlat23 = (x_461 * x_462);
  let x_464 : f32 = u_xlat23;
  let x_468 : vec4<f32> = x_46.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_464, x_464, x_464) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_473 : f32 = u_xlat0.y;
  let x_477 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_473) * x_477) + 1.0f);
  let x_482 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_482;
  let x_485 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_485;
  let x_488 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_488;
  let x_490 : vec4<f32> = vs_TEXCOORD1;
  let x_493 : f32 = u_xlat22;
  let x_496 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_490.x, x_490.y, x_490.z)) * vec3<f32>(x_493, x_493, x_493)) + vec3<f32>(x_496.x, x_496.y, x_496.z));
  let x_499 : vec3<f32> = u_xlat6;
  let x_500 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_499, x_500);
  let x_502 : f32 = u_xlat22;
  u_xlat22 = max(x_502, 0.001f);
  let x_505 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_505);
  let x_507 : f32 = u_xlat22;
  let x_509 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_507, x_507, x_507) * x_509);
  let x_511 : vec4<f32> = u_xlat2;
  let x_513 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_511.x, x_511.y, x_511.z), -(x_513));
  let x_516 : vec4<f32> = u_xlat2;
  let x_518 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_516.x, x_516.y, x_516.z), vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : f32 = u_xlat23;
  u_xlat23 = clamp(x_521, 0.0f, 1.0f);
  let x_523 : vec4<f32> = u_xlat2;
  let x_525 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_523.x, x_523.y, x_523.z), x_525);
  let x_529 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_529, 0.0f, 1.0f);
  let x_532 : vec4<f32> = u_xlat5;
  let x_534 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(vec3<f32>(x_532.x, x_532.y, x_532.z), x_534);
  let x_538 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_538, 0.0f, 1.0f);
  let x_543 : f32 = u_xlat9.x;
  let x_545 : f32 = u_xlat9.x;
  u_xlat16 = (x_543 * x_545);
  let x_547 : f32 = u_xlat16;
  let x_549 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_547, x_547), vec2<f32>(x_549, x_549));
  let x_552 : f32 = u_xlat16;
  u_xlat16 = (x_552 + -0.5f);
  let x_555 : f32 = u_xlat23;
  u_xlat3.x = (-(x_555) + 1.0f);
  let x_561 : f32 = u_xlat3.x;
  let x_563 : f32 = u_xlat3.x;
  u_xlat10 = (x_561 * x_563);
  let x_565 : f32 = u_xlat10;
  let x_566 : f32 = u_xlat10;
  u_xlat10 = (x_565 * x_566);
  let x_569 : f32 = u_xlat3.x;
  let x_570 : f32 = u_xlat10;
  u_xlat3.x = (x_569 * x_570);
  let x_573 : f32 = u_xlat16;
  let x_575 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_573 * x_575) + 1.0f);
  let x_579 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_579)) + 1.0f);
  let x_584 : f32 = u_xlat10;
  let x_585 : f32 = u_xlat10;
  u_xlat17 = (x_584 * x_585);
  let x_587 : f32 = u_xlat17;
  let x_588 : f32 = u_xlat17;
  u_xlat17 = (x_587 * x_588);
  let x_590 : f32 = u_xlat10;
  let x_591 : f32 = u_xlat17;
  u_xlat10 = (x_590 * x_591);
  let x_593 : f32 = u_xlat16;
  let x_594 : f32 = u_xlat10;
  u_xlat16 = ((x_593 * x_594) + 1.0f);
  let x_597 : f32 = u_xlat16;
  let x_599 : f32 = u_xlat3.x;
  u_xlat16 = (x_597 * x_599);
  let x_601 : f32 = u_xlat23;
  let x_602 : f32 = u_xlat16;
  u_xlat16 = (x_601 * x_602);
  let x_604 : f32 = u_xlat7;
  let x_605 : f32 = u_xlat7;
  u_xlat7 = (x_604 * x_605);
  let x_607 : f32 = u_xlat7;
  u_xlat7 = max(x_607, 0.002f);
  let x_610 : f32 = u_xlat7;
  u_xlat3.x = (-(x_610) + 1.0f);
  let x_614 : f32 = u_xlat22;
  let x_617 : f32 = u_xlat3.x;
  let x_619 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_614) * x_617) + x_619);
  let x_621 : f32 = u_xlat23;
  let x_623 : f32 = u_xlat3.x;
  let x_625 : f32 = u_xlat7;
  u_xlat3.x = ((x_621 * x_623) + x_625);
  let x_628 : f32 = u_xlat22;
  let x_631 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_628) * x_631);
  let x_633 : f32 = u_xlat23;
  let x_634 : f32 = u_xlat10;
  let x_636 : f32 = u_xlat22;
  u_xlat22 = ((x_633 * x_634) + x_636);
  let x_638 : f32 = u_xlat22;
  u_xlat22 = (x_638 + 0.00001f);
  let x_641 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_641);
  let x_643 : f32 = u_xlat7;
  let x_644 : f32 = u_xlat7;
  u_xlat7 = (x_643 * x_644);
  let x_647 : f32 = u_xlat2.x;
  let x_648 : f32 = u_xlat7;
  let x_651 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_647 * x_648) + -(x_651));
  let x_656 : f32 = u_xlat3.x;
  let x_658 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_656 * x_658) + 1.0f);
  let x_662 : f32 = u_xlat7;
  u_xlat7 = (x_662 * 0.318309873f);
  let x_666 : f32 = u_xlat2.x;
  let x_668 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_666 * x_668) + 0.0000001f);
  let x_673 : f32 = u_xlat7;
  let x_675 : f32 = u_xlat2.x;
  u_xlat7 = (x_673 / x_675);
  let x_677 : f32 = u_xlat7;
  let x_678 : f32 = u_xlat22;
  u_xlat7 = (x_677 * x_678);
  let x_680 : f32 = u_xlat23;
  let x_681 : f32 = u_xlat7;
  u_xlat7 = (x_680 * x_681);
  let x_683 : f32 = u_xlat7;
  u_xlat7 = (x_683 * 3.141592741f);
  let x_686 : f32 = u_xlat7;
  u_xlat7 = max(x_686, 0.0f);
  let x_688 : vec3<f32> = u_xlat1;
  let x_689 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_688, x_689);
  let x_692 : f32 = u_xlat22;
  u_xlatb22 = !((x_692 == 0.0f));
  let x_694 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_694);
  let x_696 : f32 = u_xlat7;
  let x_697 : f32 = u_xlat22;
  u_xlat7 = (x_696 * x_697);
  let x_699 : f32 = u_xlat16;
  let x_701 : vec3<f32> = u_xlat4;
  let x_702 : vec3<f32> = (vec3<f32>(x_699, x_699, x_699) * x_701);
  let x_703 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_702.x, x_703.y, x_702.y, x_702.z);
  let x_705 : vec3<f32> = u_xlat4;
  let x_706 : f32 = u_xlat7;
  u_xlat3 = (x_705 * vec3<f32>(x_706, x_706, x_706));
  let x_710 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_710) + 1.0f);
  let x_713 : f32 = u_xlat7;
  let x_714 : f32 = u_xlat7;
  u_xlat22 = (x_713 * x_714);
  let x_716 : f32 = u_xlat22;
  let x_717 : f32 = u_xlat22;
  u_xlat22 = (x_716 * x_717);
  let x_719 : f32 = u_xlat7;
  let x_720 : f32 = u_xlat22;
  u_xlat7 = (x_719 * x_720);
  let x_722 : vec3<f32> = u_xlat1;
  u_xlat4 = (-(x_722) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_726 : vec3<f32> = u_xlat4;
  let x_727 : f32 = u_xlat7;
  let x_730 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_726 * vec3<f32>(x_727, x_727, x_727)) + x_730);
  let x_732 : vec3<f32> = u_xlat1;
  let x_733 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_732 * x_733);
  let x_737 : vec4<f32> = u_xlat0;
  let x_739 : vec4<f32> = u_xlat2;
  let x_742 : vec3<f32> = u_xlat1;
  let x_743 : vec3<f32> = ((vec3<f32>(x_737.x, x_737.z, x_737.w) * vec3<f32>(x_739.x, x_739.z, x_739.w)) + x_742);
  let x_744 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
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

