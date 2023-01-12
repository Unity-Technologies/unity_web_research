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
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_46 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(3) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat24 : f32;
  var u_xlatb24 : bool;
  var x_318 : vec3<f32>;
  var u_xlat11 : f32;
  var u_xlat7 : f32;
  var u_xlat6 : vec3<f32>;
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
  let x_204 : vec3<f32> = x_46.x_WorldSpaceCameraPos;
  let x_205 : vec3<f32> = (-(x_199) + x_204);
  let x_206 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_211 : f32 = x_46.unity_MatrixV[0i].z;
  u_xlat5.x = x_211;
  let x_215 : f32 = x_46.unity_MatrixV[1i].z;
  u_xlat5.y = x_215;
  let x_220 : f32 = x_46.unity_MatrixV[2i].z;
  u_xlat5.z = x_220;
  let x_223 : vec4<f32> = u_xlat4;
  let x_225 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), x_225);
  let x_227 : vec3<f32> = vs_TEXCOORD5;
  let x_230 : vec4<f32> = x_46.unity_ShadowFadeCenterAndType;
  let x_233 : vec3<f32> = (x_227 + -(vec3<f32>(x_230.x, x_230.y, x_230.z)));
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_237 : vec4<f32> = u_xlat4;
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_237.x, x_237.y, x_237.z), vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : f32 = u_xlat24;
  u_xlat24 = sqrt(x_242);
  let x_244 : f32 = u_xlat23;
  let x_246 : f32 = u_xlat24;
  u_xlat24 = (-(x_244) + x_246);
  let x_250 : f32 = x_46.unity_ShadowFadeCenterAndType.w;
  let x_251 : f32 = u_xlat24;
  let x_253 : f32 = u_xlat23;
  u_xlat23 = ((x_250 * x_251) + x_253);
  let x_255 : f32 = u_xlat23;
  let x_257 : f32 = x_46.x_LightShadowData.z;
  let x_260 : f32 = x_46.x_LightShadowData.w;
  u_xlat23 = ((x_255 * x_257) + x_260);
  let x_262 : f32 = u_xlat23;
  u_xlat23 = clamp(x_262, 0.0f, 1.0f);
  let x_270 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb24 = (x_270 == 1.0f);
  let x_272 : bool = u_xlatb24;
  if (x_272) {
    let x_276 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb24 = (x_276 == 1.0f);
    let x_278 : vec3<f32> = vs_TEXCOORD5;
    let x_282 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_284 : vec3<f32> = (vec3<f32>(x_278.y, x_278.y, x_278.y) * vec3<f32>(x_282.x, x_282.y, x_282.z));
    let x_285 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_288 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_290 : vec3<f32> = vs_TEXCOORD5;
    let x_293 : vec4<f32> = u_xlat4;
    let x_295 : vec3<f32> = ((vec3<f32>(x_288.x, x_288.y, x_288.z) * vec3<f32>(x_290.x, x_290.x, x_290.x)) + vec3<f32>(x_293.x, x_293.y, x_293.z));
    let x_296 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_299 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_301 : vec3<f32> = vs_TEXCOORD5;
    let x_304 : vec4<f32> = u_xlat4;
    let x_306 : vec3<f32> = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.z, x_301.z, x_301.z)) + vec3<f32>(x_304.x, x_304.y, x_304.z));
    let x_307 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
    let x_309 : vec4<f32> = u_xlat4;
    let x_312 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_314 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) + vec3<f32>(x_312.x, x_312.y, x_312.z));
    let x_315 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_317 : bool = u_xlatb24;
    if (x_317) {
      let x_321 : vec4<f32> = u_xlat4;
      x_318 = vec3<f32>(x_321.x, x_321.y, x_321.z);
    } else {
      let x_324 : vec3<f32> = vs_TEXCOORD5;
      x_318 = x_324;
    }
    let x_325 : vec3<f32> = x_318;
    let x_326 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
    let x_328 : vec4<f32> = u_xlat4;
    let x_332 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_334 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + -(x_332));
    let x_335 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_337 : vec4<f32> = u_xlat4;
    let x_341 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_342 : vec3<f32> = (vec3<f32>(x_337.x, x_337.y, x_337.z) * x_341);
    let x_343 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_343.x, x_342.x, x_342.y, x_342.z);
    let x_346 : f32 = u_xlat4.y;
    u_xlat24 = ((x_346 * 0.25f) + 0.75f);
    let x_353 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat11 = ((x_353 * 0.5f) + 0.75f);
    let x_357 : f32 = u_xlat24;
    let x_358 : f32 = u_xlat11;
    u_xlat4.x = max(x_357, x_358);
    let x_369 : vec4<f32> = u_xlat4;
    let x_371 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_369.x, x_369.z, x_369.w));
    u_xlat4 = x_371;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_377 : vec4<f32> = u_xlat4;
  let x_379 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat24 = dot(x_377, x_379);
  let x_381 : f32 = u_xlat24;
  u_xlat24 = clamp(x_381, 0.0f, 1.0f);
  let x_384 : vec4<f32> = vs_TEXCOORD7;
  let x_386 : vec4<f32> = vs_TEXCOORD7;
  let x_388 : vec2<f32> = (vec2<f32>(x_384.x, x_384.y) / vec2<f32>(x_386.w, x_386.w));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
  let x_396 : vec4<f32> = u_xlat4;
  let x_398 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_396.x, x_396.y));
  u_xlat4.x = x_398.x;
  let x_401 : f32 = u_xlat24;
  let x_403 : f32 = u_xlat4.x;
  u_xlat24 = (x_401 + -(x_403));
  let x_406 : f32 = u_xlat23;
  let x_407 : f32 = u_xlat24;
  let x_410 : f32 = u_xlat4.x;
  u_xlat23 = ((x_406 * x_407) + x_410);
  let x_412 : f32 = u_xlat23;
  let x_416 : vec4<f32> = x_46.x_LightColor0;
  let x_418 : vec3<f32> = (vec3<f32>(x_412, x_412, x_412) * vec3<f32>(x_416.x, x_416.y, x_416.z));
  let x_419 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_423 : f32 = u_xlat0.y;
  let x_427 : f32 = x_46.x_GlossMapScale;
  u_xlat7 = ((-(x_423) * x_427) + 1.0f);
  let x_432 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_432;
  let x_435 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_435;
  let x_438 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_438;
  let x_441 : vec4<f32> = vs_TEXCOORD1;
  let x_444 : f32 = u_xlat22;
  let x_447 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_441.x, x_441.y, x_441.z)) * vec3<f32>(x_444, x_444, x_444)) + x_447);
  let x_449 : vec3<f32> = u_xlat6;
  let x_450 : vec3<f32> = u_xlat6;
  u_xlat22 = dot(x_449, x_450);
  let x_452 : f32 = u_xlat22;
  u_xlat22 = max(x_452, 0.001f);
  let x_455 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_455);
  let x_457 : f32 = u_xlat22;
  let x_459 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_457, x_457, x_457) * x_459);
  let x_461 : vec4<f32> = u_xlat2;
  let x_463 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_461.x, x_461.y, x_461.z), -(x_463));
  let x_466 : vec4<f32> = u_xlat2;
  let x_468 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_466.x, x_466.y, x_466.z), x_468);
  let x_470 : f32 = u_xlat23;
  u_xlat23 = clamp(x_470, 0.0f, 1.0f);
  let x_472 : vec4<f32> = u_xlat2;
  let x_474 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_472.x, x_472.y, x_472.z), x_474);
  let x_478 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_478, 0.0f, 1.0f);
  let x_481 : vec3<f32> = u_xlat5;
  let x_482 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(x_481, x_482);
  let x_486 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_486, 0.0f, 1.0f);
  let x_491 : f32 = u_xlat9.x;
  let x_493 : f32 = u_xlat9.x;
  u_xlat16 = (x_491 * x_493);
  let x_495 : f32 = u_xlat16;
  let x_497 : f32 = u_xlat7;
  u_xlat16 = dot(vec2<f32>(x_495, x_495), vec2<f32>(x_497, x_497));
  let x_500 : f32 = u_xlat16;
  u_xlat16 = (x_500 + -0.5f);
  let x_503 : f32 = u_xlat23;
  u_xlat3.x = (-(x_503) + 1.0f);
  let x_509 : f32 = u_xlat3.x;
  let x_511 : f32 = u_xlat3.x;
  u_xlat10 = (x_509 * x_511);
  let x_513 : f32 = u_xlat10;
  let x_514 : f32 = u_xlat10;
  u_xlat10 = (x_513 * x_514);
  let x_517 : f32 = u_xlat3.x;
  let x_518 : f32 = u_xlat10;
  u_xlat3.x = (x_517 * x_518);
  let x_521 : f32 = u_xlat16;
  let x_523 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_521 * x_523) + 1.0f);
  let x_527 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_527)) + 1.0f);
  let x_532 : f32 = u_xlat10;
  let x_533 : f32 = u_xlat10;
  u_xlat17 = (x_532 * x_533);
  let x_535 : f32 = u_xlat17;
  let x_536 : f32 = u_xlat17;
  u_xlat17 = (x_535 * x_536);
  let x_538 : f32 = u_xlat10;
  let x_539 : f32 = u_xlat17;
  u_xlat10 = (x_538 * x_539);
  let x_541 : f32 = u_xlat16;
  let x_542 : f32 = u_xlat10;
  u_xlat16 = ((x_541 * x_542) + 1.0f);
  let x_545 : f32 = u_xlat16;
  let x_547 : f32 = u_xlat3.x;
  u_xlat16 = (x_545 * x_547);
  let x_549 : f32 = u_xlat23;
  let x_550 : f32 = u_xlat16;
  u_xlat16 = (x_549 * x_550);
  let x_552 : f32 = u_xlat7;
  let x_553 : f32 = u_xlat7;
  u_xlat7 = (x_552 * x_553);
  let x_555 : f32 = u_xlat7;
  u_xlat7 = max(x_555, 0.002f);
  let x_558 : f32 = u_xlat7;
  u_xlat3.x = (-(x_558) + 1.0f);
  let x_562 : f32 = u_xlat22;
  let x_565 : f32 = u_xlat3.x;
  let x_567 : f32 = u_xlat7;
  u_xlat10 = ((abs(x_562) * x_565) + x_567);
  let x_569 : f32 = u_xlat23;
  let x_571 : f32 = u_xlat3.x;
  let x_573 : f32 = u_xlat7;
  u_xlat3.x = ((x_569 * x_571) + x_573);
  let x_576 : f32 = u_xlat22;
  let x_579 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_576) * x_579);
  let x_581 : f32 = u_xlat23;
  let x_582 : f32 = u_xlat10;
  let x_584 : f32 = u_xlat22;
  u_xlat22 = ((x_581 * x_582) + x_584);
  let x_586 : f32 = u_xlat22;
  u_xlat22 = (x_586 + 0.00001f);
  let x_589 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_589);
  let x_591 : f32 = u_xlat7;
  let x_592 : f32 = u_xlat7;
  u_xlat7 = (x_591 * x_592);
  let x_595 : f32 = u_xlat2.x;
  let x_596 : f32 = u_xlat7;
  let x_599 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_595 * x_596) + -(x_599));
  let x_604 : f32 = u_xlat3.x;
  let x_606 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_604 * x_606) + 1.0f);
  let x_610 : f32 = u_xlat7;
  u_xlat7 = (x_610 * 0.318309873f);
  let x_614 : f32 = u_xlat2.x;
  let x_616 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_614 * x_616) + 0.0000001f);
  let x_621 : f32 = u_xlat7;
  let x_623 : f32 = u_xlat2.x;
  u_xlat7 = (x_621 / x_623);
  let x_625 : f32 = u_xlat7;
  let x_626 : f32 = u_xlat22;
  u_xlat7 = (x_625 * x_626);
  let x_628 : f32 = u_xlat23;
  let x_629 : f32 = u_xlat7;
  u_xlat7 = (x_628 * x_629);
  let x_631 : f32 = u_xlat7;
  u_xlat7 = (x_631 * 3.141592741f);
  let x_634 : f32 = u_xlat7;
  u_xlat7 = max(x_634, 0.0f);
  let x_636 : vec3<f32> = u_xlat1;
  let x_637 : vec3<f32> = u_xlat1;
  u_xlat22 = dot(x_636, x_637);
  let x_640 : f32 = u_xlat22;
  u_xlatb22 = !((x_640 == 0.0f));
  let x_642 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_642);
  let x_644 : f32 = u_xlat7;
  let x_645 : f32 = u_xlat22;
  u_xlat7 = (x_644 * x_645);
  let x_647 : f32 = u_xlat16;
  let x_649 : vec4<f32> = u_xlat4;
  let x_651 : vec3<f32> = (vec3<f32>(x_647, x_647, x_647) * vec3<f32>(x_649.x, x_649.y, x_649.z));
  let x_652 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_651.x, x_652.y, x_651.y, x_651.z);
  let x_654 : vec4<f32> = u_xlat4;
  let x_656 : f32 = u_xlat7;
  u_xlat3 = (vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(x_656, x_656, x_656));
  let x_660 : f32 = u_xlat9.x;
  u_xlat7 = (-(x_660) + 1.0f);
  let x_663 : f32 = u_xlat7;
  let x_664 : f32 = u_xlat7;
  u_xlat22 = (x_663 * x_664);
  let x_666 : f32 = u_xlat22;
  let x_667 : f32 = u_xlat22;
  u_xlat22 = (x_666 * x_667);
  let x_669 : f32 = u_xlat7;
  let x_670 : f32 = u_xlat22;
  u_xlat7 = (x_669 * x_670);
  let x_672 : vec3<f32> = u_xlat1;
  let x_675 : vec3<f32> = (-(x_672) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_676 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_678 : vec4<f32> = u_xlat4;
  let x_680 : f32 = u_xlat7;
  let x_683 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_678.x, x_678.y, x_678.z) * vec3<f32>(x_680, x_680, x_680)) + x_683);
  let x_685 : vec3<f32> = u_xlat1;
  let x_686 : vec3<f32> = u_xlat3;
  u_xlat1 = (x_685 * x_686);
  let x_690 : vec4<f32> = u_xlat0;
  let x_692 : vec4<f32> = u_xlat2;
  let x_695 : vec3<f32> = u_xlat1;
  let x_696 : vec3<f32> = ((vec3<f32>(x_690.x, x_690.z, x_690.w) * vec3<f32>(x_692.x, x_692.z, x_692.w)) + x_695);
  let x_697 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
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

