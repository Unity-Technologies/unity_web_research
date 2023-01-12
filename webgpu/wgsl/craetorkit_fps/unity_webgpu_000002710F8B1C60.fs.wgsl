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

@group(1) @binding(0) var<uniform> x_36 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(11) var sampler_LightTextureB0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var x_338 : vec3<f32>;
  var u_xlat23 : f32;
  var txVec0 : vec3<f32>;
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
  let x_89 : vec4<f32> = vs_TEXCOORD0;
  let x_91 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_89.x, x_89.y));
  let x_92 : vec3<f32> = vec3<f32>(x_91.x, x_91.y, x_91.w);
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_97 : f32 = u_xlat2.z;
  let x_100 : f32 = u_xlat2.x;
  u_xlat2.x = (x_97 * x_100);
  let x_103 : vec4<f32> = u_xlat2;
  let x_110 : vec2<f32> = ((vec2<f32>(x_103.x, x_103.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_111.z, x_111.w);
  let x_113 : vec4<f32> = u_xlat2;
  let x_117 : f32 = x_36.x_BumpScale;
  let x_119 : vec2<f32> = (vec2<f32>(x_113.x, x_113.y) * vec2<f32>(x_117, x_117));
  let x_120 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_119.x, x_119.y, x_120.z, x_120.w);
  let x_122 : vec4<f32> = u_xlat2;
  let x_124 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec2<f32>(x_122.x, x_122.y), vec2<f32>(x_124.x, x_124.y));
  let x_127 : f32 = u_xlat21;
  u_xlat21 = min(x_127, 1.0f);
  let x_130 : f32 = u_xlat21;
  u_xlat21 = (-(x_130) + 1.0f);
  let x_133 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_133);
  let x_136 : vec4<f32> = u_xlat2;
  let x_139 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_136.y, x_136.y, x_136.y) * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_143 : vec4<f32> = vs_TEXCOORD2;
  let x_145 : vec4<f32> = u_xlat2;
  let x_148 : vec3<f32> = u_xlat9;
  let x_149 : vec3<f32> = ((vec3<f32>(x_143.x, x_143.y, x_143.z) * vec3<f32>(x_145.x, x_145.x, x_145.x)) + x_148);
  let x_150 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec4<f32> = vs_TEXCOORD4;
  let x_155 : f32 = u_xlat21;
  let x_158 : vec4<f32> = u_xlat2;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155, x_155, x_155)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_168);
  let x_170 : f32 = u_xlat21;
  let x_172 : vec4<f32> = u_xlat2;
  let x_174 : vec3<f32> = (vec3<f32>(x_170, x_170, x_170) * vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec4<f32> = vs_TEXCOORD1;
  let x_180 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_178.x, x_178.y, x_178.z), vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_183);
  let x_186 : f32 = u_xlat21;
  let x_188 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_186, x_186, x_186) * vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_194 : vec3<f32> = vs_TEXCOORD5;
  let x_199 : vec4<f32> = x_36.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_194.y, x_194.y, x_194.y, x_194.y) * x_199);
  let x_203 : vec4<f32> = x_36.unity_WorldToLight[0i];
  let x_204 : vec3<f32> = vs_TEXCOORD5;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_203 * vec4<f32>(x_204.x, x_204.x, x_204.x, x_204.x)) + x_207);
  let x_211 : vec4<f32> = x_36.unity_WorldToLight[2i];
  let x_212 : vec3<f32> = vs_TEXCOORD5;
  let x_215 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_211 * vec4<f32>(x_212.z, x_212.z, x_212.z, x_212.z)) + x_215);
  let x_217 : vec4<f32> = u_xlat4;
  let x_220 : vec4<f32> = x_36.unity_WorldToLight[3i];
  u_xlat4 = (x_217 + x_220);
  let x_223 : vec3<f32> = vs_TEXCOORD5;
  let x_227 : vec3<f32> = x_36.x_WorldSpaceCameraPos;
  let x_228 : vec3<f32> = (-(x_223) + x_227);
  let x_229 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_234 : f32 = x_36.unity_MatrixV[0i].z;
  u_xlat6.x = x_234;
  let x_237 : f32 = x_36.unity_MatrixV[1i].z;
  u_xlat6.y = x_237;
  let x_241 : f32 = x_36.unity_MatrixV[2i].z;
  u_xlat6.z = x_241;
  let x_243 : vec4<f32> = u_xlat5;
  let x_245 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), x_245);
  let x_247 : vec3<f32> = vs_TEXCOORD5;
  let x_250 : vec4<f32> = x_36.unity_ShadowFadeCenterAndType;
  let x_253 : vec3<f32> = (x_247 + -(vec3<f32>(x_250.x, x_250.y, x_250.z)));
  let x_254 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec4<f32> = u_xlat5;
  let x_259 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_257.x, x_257.y, x_257.z), vec3<f32>(x_259.x, x_259.y, x_259.z));
  let x_262 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_262);
  let x_264 : f32 = u_xlat21;
  let x_266 : f32 = u_xlat22;
  u_xlat22 = (-(x_264) + x_266);
  let x_270 : f32 = x_36.unity_ShadowFadeCenterAndType.w;
  let x_271 : f32 = u_xlat22;
  let x_273 : f32 = u_xlat21;
  u_xlat21 = ((x_270 * x_271) + x_273);
  let x_275 : f32 = u_xlat21;
  let x_277 : f32 = x_36.x_LightShadowData.z;
  let x_280 : f32 = x_36.x_LightShadowData.w;
  u_xlat21 = ((x_275 * x_277) + x_280);
  let x_282 : f32 = u_xlat21;
  u_xlat21 = clamp(x_282, 0.0f, 1.0f);
  let x_290 : f32 = x_36.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_290 == 1.0f);
  let x_292 : bool = u_xlatb22;
  if (x_292) {
    let x_296 : f32 = x_36.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_296 == 1.0f);
    let x_298 : vec3<f32> = vs_TEXCOORD5;
    let x_302 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[1i];
    let x_304 : vec3<f32> = (vec3<f32>(x_298.y, x_298.y, x_298.y) * vec3<f32>(x_302.x, x_302.y, x_302.z));
    let x_305 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_308 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[0i];
    let x_310 : vec3<f32> = vs_TEXCOORD5;
    let x_313 : vec4<f32> = u_xlat5;
    let x_315 : vec3<f32> = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.x, x_310.x, x_310.x)) + vec3<f32>(x_313.x, x_313.y, x_313.z));
    let x_316 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_315.x, x_315.y, x_315.z, x_316.w);
    let x_319 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[2i];
    let x_321 : vec3<f32> = vs_TEXCOORD5;
    let x_324 : vec4<f32> = u_xlat5;
    let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.z, x_321.z, x_321.z)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
    let x_327 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
    let x_329 : vec4<f32> = u_xlat5;
    let x_332 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[3i];
    let x_334 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) + vec3<f32>(x_332.x, x_332.y, x_332.z));
    let x_335 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
    let x_337 : bool = u_xlatb22;
    if (x_337) {
      let x_341 : vec4<f32> = u_xlat5;
      x_338 = vec3<f32>(x_341.x, x_341.y, x_341.z);
    } else {
      let x_344 : vec3<f32> = vs_TEXCOORD5;
      x_338 = x_344;
    }
    let x_345 : vec3<f32> = x_338;
    let x_346 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
    let x_348 : vec4<f32> = u_xlat5;
    let x_352 : vec3<f32> = x_36.unity_ProbeVolumeMin;
    let x_354 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) + -(x_352));
    let x_355 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
    let x_357 : vec4<f32> = u_xlat5;
    let x_361 : vec3<f32> = x_36.unity_ProbeVolumeSizeInv;
    let x_362 : vec3<f32> = (vec3<f32>(x_357.x, x_357.y, x_357.z) * x_361);
    let x_363 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_363.x, x_362.x, x_362.y, x_362.z);
    let x_366 : f32 = u_xlat5.y;
    u_xlat22 = ((x_366 * 0.25f) + 0.75f);
    let x_373 : f32 = x_36.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_373 * 0.5f) + 0.75f);
    let x_377 : f32 = u_xlat22;
    let x_378 : f32 = u_xlat23;
    u_xlat5.x = max(x_377, x_378);
    let x_389 : vec4<f32> = u_xlat5;
    let x_391 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_389.x, x_389.z, x_389.w));
    u_xlat5 = x_391;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_397 : vec4<f32> = u_xlat5;
  let x_399 : vec4<f32> = x_36.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_397, x_399);
  let x_401 : f32 = u_xlat22;
  u_xlat22 = clamp(x_401, 0.0f, 1.0f);
  let x_403 : vec3<f32> = vs_TEXCOORD5;
  let x_406 : vec4<f32> = x_36.unity_WorldToShadow[0i][1i];
  u_xlat5 = (vec4<f32>(x_403.y, x_403.y, x_403.y, x_403.y) * x_406);
  let x_409 : vec4<f32> = x_36.unity_WorldToShadow[0i][0i];
  let x_410 : vec3<f32> = vs_TEXCOORD5;
  let x_413 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_409 * vec4<f32>(x_410.x, x_410.x, x_410.x, x_410.x)) + x_413);
  let x_416 : vec4<f32> = x_36.unity_WorldToShadow[0i][2i];
  let x_417 : vec3<f32> = vs_TEXCOORD5;
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_416 * vec4<f32>(x_417.z, x_417.z, x_417.z, x_417.z)) + x_420);
  let x_422 : vec4<f32> = u_xlat5;
  let x_424 : vec4<f32> = x_36.unity_WorldToShadow[0i][3i];
  u_xlat5 = (x_422 + x_424);
  let x_426 : vec4<f32> = u_xlat5;
  let x_428 : vec4<f32> = u_xlat5;
  let x_430 : vec3<f32> = (vec3<f32>(x_426.x, x_426.y, x_426.z) / vec3<f32>(x_428.w, x_428.w, x_428.w));
  let x_431 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : vec4<f32> = u_xlat5;
  let x_435 : vec2<f32> = vec2<f32>(x_434.x, x_434.y);
  let x_437 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_435.x, x_435.y, x_437);
  let x_449 : vec3<f32> = txVec0;
  let x_451 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_449.xy, x_449.z);
  u_xlat23 = x_451;
  let x_454 : f32 = x_36.x_LightShadowData.x;
  u_xlat24 = (-(x_454) + 1.0f);
  let x_457 : f32 = u_xlat23;
  let x_458 : f32 = u_xlat24;
  let x_461 : f32 = x_36.x_LightShadowData.x;
  u_xlat23 = ((x_457 * x_458) + x_461);
  let x_463 : f32 = u_xlat22;
  let x_464 : f32 = u_xlat23;
  u_xlat22 = (x_463 + -(x_464));
  let x_467 : f32 = u_xlat21;
  let x_468 : f32 = u_xlat22;
  let x_470 : f32 = u_xlat23;
  u_xlat21 = ((x_467 * x_468) + x_470);
  let x_473 : f32 = u_xlat4.z;
  u_xlatb22 = (0.0f < x_473);
  let x_475 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_475);
  let x_477 : vec4<f32> = u_xlat4;
  let x_479 : vec4<f32> = u_xlat4;
  let x_481 : vec2<f32> = (vec2<f32>(x_477.x, x_477.y) / vec2<f32>(x_479.w, x_479.w));
  let x_482 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
  let x_484 : vec4<f32> = u_xlat5;
  let x_487 : vec2<f32> = (vec2<f32>(x_484.x, x_484.y) + vec2<f32>(0.5f, 0.5f));
  let x_488 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_487.x, x_487.y, x_488.z, x_488.w);
  let x_495 : vec4<f32> = u_xlat5;
  let x_497 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_495.x, x_495.y));
  u_xlat23 = x_497.w;
  let x_499 : f32 = u_xlat22;
  let x_500 : f32 = u_xlat23;
  u_xlat22 = (x_499 * x_500);
  let x_502 : vec4<f32> = u_xlat4;
  let x_504 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_502.x, x_502.y, x_502.z), vec3<f32>(x_504.x, x_504.y, x_504.z));
  let x_512 : f32 = u_xlat23;
  let x_514 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_512, x_512));
  u_xlat23 = x_514.x;
  let x_516 : f32 = u_xlat22;
  let x_517 : f32 = u_xlat23;
  u_xlat22 = (x_516 * x_517);
  let x_519 : f32 = u_xlat21;
  let x_520 : f32 = u_xlat22;
  u_xlat21 = (x_519 * x_520);
  let x_524 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_524;
  let x_527 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_527;
  let x_530 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_530;
  let x_532 : vec4<f32> = u_xlat4;
  let x_534 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_532.x, x_532.y, x_532.z), vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_537);
  let x_539 : f32 = u_xlat22;
  let x_541 : vec4<f32> = u_xlat4;
  let x_543 : vec3<f32> = (vec3<f32>(x_539, x_539, x_539) * vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : f32 = u_xlat21;
  let x_550 : vec4<f32> = x_36.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_546, x_546, x_546) * vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_555 : f32 = x_36.x_Glossiness;
  u_xlat21 = (-(x_555) + 1.0f);
  let x_558 : vec4<f32> = u_xlat4;
  let x_560 : f32 = u_xlat22;
  let x_563 : vec3<f32> = u_xlat3;
  let x_565 : vec3<f32> = ((vec3<f32>(x_558.x, x_558.y, x_558.z) * vec3<f32>(x_560, x_560, x_560)) + -(x_563));
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_568 : vec4<f32> = u_xlat4;
  let x_570 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_568.x, x_568.y, x_568.z), vec3<f32>(x_570.x, x_570.y, x_570.z));
  let x_573 : f32 = u_xlat22;
  u_xlat22 = max(x_573, 0.001f);
  let x_576 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_576);
  let x_578 : f32 = u_xlat22;
  let x_580 : vec4<f32> = u_xlat4;
  let x_582 : vec3<f32> = (vec3<f32>(x_578, x_578, x_578) * vec3<f32>(x_580.x, x_580.y, x_580.z));
  let x_583 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  let x_585 : vec4<f32> = u_xlat2;
  let x_587 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_585.x, x_585.y, x_585.z), -(x_587));
  let x_590 : vec4<f32> = u_xlat2;
  let x_592 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_590.x, x_590.y, x_590.z), vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : f32 = u_xlat23;
  u_xlat23 = clamp(x_595, 0.0f, 1.0f);
  let x_597 : vec4<f32> = u_xlat2;
  let x_599 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_597.x, x_597.y, x_597.z), vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_604 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_604, 0.0f, 1.0f);
  let x_607 : vec4<f32> = u_xlat5;
  let x_609 : vec4<f32> = u_xlat4;
  u_xlat9.x = dot(vec3<f32>(x_607.x, x_607.y, x_607.z), vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_614 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_614, 0.0f, 1.0f);
  let x_619 : f32 = u_xlat9.x;
  let x_621 : f32 = u_xlat9.x;
  u_xlat16 = (x_619 * x_621);
  let x_623 : f32 = u_xlat16;
  let x_625 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_623, x_623), vec2<f32>(x_625, x_625));
  let x_628 : f32 = u_xlat16;
  u_xlat16 = (x_628 + -0.5f);
  let x_631 : f32 = u_xlat23;
  u_xlat3.x = (-(x_631) + 1.0f);
  let x_637 : f32 = u_xlat3.x;
  let x_639 : f32 = u_xlat3.x;
  u_xlat10 = (x_637 * x_639);
  let x_641 : f32 = u_xlat10;
  let x_642 : f32 = u_xlat10;
  u_xlat10 = (x_641 * x_642);
  let x_645 : f32 = u_xlat3.x;
  let x_646 : f32 = u_xlat10;
  u_xlat3.x = (x_645 * x_646);
  let x_649 : f32 = u_xlat16;
  let x_651 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_649 * x_651) + 1.0f);
  let x_655 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_655)) + 1.0f);
  let x_660 : f32 = u_xlat10;
  let x_661 : f32 = u_xlat10;
  u_xlat17 = (x_660 * x_661);
  let x_663 : f32 = u_xlat17;
  let x_664 : f32 = u_xlat17;
  u_xlat17 = (x_663 * x_664);
  let x_666 : f32 = u_xlat10;
  let x_667 : f32 = u_xlat17;
  u_xlat10 = (x_666 * x_667);
  let x_669 : f32 = u_xlat16;
  let x_670 : f32 = u_xlat10;
  u_xlat16 = ((x_669 * x_670) + 1.0f);
  let x_673 : f32 = u_xlat16;
  let x_675 : f32 = u_xlat3.x;
  u_xlat16 = (x_673 * x_675);
  let x_677 : f32 = u_xlat23;
  let x_678 : f32 = u_xlat16;
  u_xlat16 = (x_677 * x_678);
  let x_680 : f32 = u_xlat21;
  let x_681 : f32 = u_xlat21;
  u_xlat21 = (x_680 * x_681);
  let x_683 : f32 = u_xlat21;
  u_xlat21 = max(x_683, 0.002f);
  let x_686 : f32 = u_xlat21;
  u_xlat3.x = (-(x_686) + 1.0f);
  let x_690 : f32 = u_xlat22;
  let x_693 : f32 = u_xlat3.x;
  let x_695 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_690) * x_693) + x_695);
  let x_697 : f32 = u_xlat23;
  let x_699 : f32 = u_xlat3.x;
  let x_701 : f32 = u_xlat21;
  u_xlat3.x = ((x_697 * x_699) + x_701);
  let x_704 : f32 = u_xlat22;
  let x_707 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_704) * x_707);
  let x_709 : f32 = u_xlat23;
  let x_710 : f32 = u_xlat10;
  let x_712 : f32 = u_xlat22;
  u_xlat22 = ((x_709 * x_710) + x_712);
  let x_714 : f32 = u_xlat22;
  u_xlat22 = (x_714 + 0.00001f);
  let x_717 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_717);
  let x_719 : f32 = u_xlat21;
  let x_720 : f32 = u_xlat21;
  u_xlat21 = (x_719 * x_720);
  let x_723 : f32 = u_xlat2.x;
  let x_724 : f32 = u_xlat21;
  let x_727 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_723 * x_724) + -(x_727));
  let x_732 : f32 = u_xlat3.x;
  let x_734 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_732 * x_734) + 1.0f);
  let x_738 : f32 = u_xlat21;
  u_xlat21 = (x_738 * 0.318309873f);
  let x_742 : f32 = u_xlat2.x;
  let x_744 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_742 * x_744) + 0.0000001f);
  let x_749 : f32 = u_xlat21;
  let x_751 : f32 = u_xlat2.x;
  u_xlat21 = (x_749 / x_751);
  let x_753 : f32 = u_xlat21;
  let x_754 : f32 = u_xlat22;
  u_xlat21 = (x_753 * x_754);
  let x_756 : f32 = u_xlat23;
  let x_757 : f32 = u_xlat21;
  u_xlat21 = (x_756 * x_757);
  let x_759 : f32 = u_xlat21;
  u_xlat21 = (x_759 * 3.141592741f);
  let x_762 : f32 = u_xlat21;
  u_xlat21 = max(x_762, 0.0f);
  let x_764 : vec3<f32> = u_xlat0;
  let x_765 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_764, x_765);
  let x_767 : f32 = u_xlat22;
  u_xlatb22 = !((x_767 == 0.0f));
  let x_769 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_769);
  let x_771 : f32 = u_xlat21;
  let x_772 : f32 = u_xlat22;
  u_xlat21 = (x_771 * x_772);
  let x_774 : f32 = u_xlat16;
  let x_776 : vec3<f32> = u_xlat6;
  let x_777 : vec3<f32> = (vec3<f32>(x_774, x_774, x_774) * x_776);
  let x_778 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_777.x, x_778.y, x_777.y, x_777.z);
  let x_780 : vec3<f32> = u_xlat6;
  let x_781 : f32 = u_xlat21;
  u_xlat3 = (x_780 * vec3<f32>(x_781, x_781, x_781));
  let x_785 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_785) + 1.0f);
  let x_788 : f32 = u_xlat21;
  let x_789 : f32 = u_xlat21;
  u_xlat22 = (x_788 * x_789);
  let x_791 : f32 = u_xlat22;
  let x_792 : f32 = u_xlat22;
  u_xlat22 = (x_791 * x_792);
  let x_794 : f32 = u_xlat21;
  let x_795 : f32 = u_xlat22;
  u_xlat21 = (x_794 * x_795);
  let x_797 : vec3<f32> = u_xlat0;
  let x_800 : vec3<f32> = (-(x_797) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_801 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat4;
  let x_805 : f32 = u_xlat21;
  let x_808 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_805, x_805, x_805)) + x_808);
  let x_810 : vec3<f32> = u_xlat0;
  let x_811 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_810 * x_811);
  let x_815 : vec3<f32> = u_xlat1;
  let x_816 : vec4<f32> = u_xlat2;
  let x_819 : vec3<f32> = u_xlat0;
  let x_820 : vec3<f32> = ((x_815 * vec3<f32>(x_816.x, x_816.z, x_816.w)) + x_819);
  let x_821 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
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

