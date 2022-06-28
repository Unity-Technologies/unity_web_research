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

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_39 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlatb22 : bool;

var<private> u_xlat23 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat24 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_279 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_32 : f32 = u_xlat0.w;
  let x_44 : f32 = x_39.x_Color.w;
  SV_Target0.w = (x_32 * x_44);
  let x_50 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_39.x_Color;
  u_xlat1 = (vec3<f32>(x_50.x, x_50.y, x_50.z) * vec3<f32>(x_54.x, x_54.y, x_54.z));
  let x_58 : vec4<f32> = x_39.x_Color;
  let x_60 : vec4<f32> = u_xlat0;
  let x_65 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_60.x, x_60.y, x_60.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_66 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_65.x, x_65.y, x_65.z, x_66.w);
  let x_70 : f32 = x_39.x_Metallic;
  let x_72 : f32 = x_39.x_Metallic;
  let x_74 : f32 = x_39.x_Metallic;
  let x_75 : vec3<f32> = vec3<f32>(x_70, x_72, x_74);
  let x_80 : vec4<f32> = u_xlat0;
  let x_85 : vec3<f32> = ((vec3<f32>(x_75.x, x_75.y, x_75.z) * vec3<f32>(x_80.x, x_80.y, x_80.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_86 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_90 : f32 = x_39.x_Metallic;
  u_xlat21 = ((-(x_90) * 0.959999979f) + 0.959999979f);
  let x_95 : f32 = u_xlat21;
  let x_97 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_95, x_95, x_95) * x_97);
  let x_100 : vec4<f32> = vs_TEXCOORD4;
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_100.x, x_100.y, x_100.z), vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_105);
  let x_108 : f32 = u_xlat21;
  let x_110 : vec4<f32> = vs_TEXCOORD4;
  let x_112 : vec3<f32> = (vec3<f32>(x_108, x_108, x_108) * vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_116 : vec4<f32> = vs_TEXCOORD1;
  let x_118 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_116.x, x_116.y, x_116.z), vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_121);
  let x_124 : f32 = u_xlat21;
  let x_126 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_124, x_124, x_124) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  let x_132 : vec3<f32> = vs_TEXCOORD5;
  let x_137 : vec4<f32> = x_39.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_132.y, x_132.y, x_132.y, x_132.y) * x_137);
  let x_141 : vec4<f32> = x_39.unity_WorldToLight[0i];
  let x_142 : vec3<f32> = vs_TEXCOORD5;
  let x_145 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_141 * vec4<f32>(x_142.x, x_142.x, x_142.x, x_142.x)) + x_145);
  let x_149 : vec4<f32> = x_39.unity_WorldToLight[2i];
  let x_150 : vec3<f32> = vs_TEXCOORD5;
  let x_153 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_149 * vec4<f32>(x_150.z, x_150.z, x_150.z, x_150.z)) + x_153);
  let x_155 : vec4<f32> = u_xlat4;
  let x_158 : vec4<f32> = x_39.unity_WorldToLight[3i];
  u_xlat4 = (x_155 + x_158);
  let x_161 : vec3<f32> = vs_TEXCOORD5;
  let x_165 : vec3<f32> = x_39.x_WorldSpaceCameraPos;
  let x_166 : vec3<f32> = (-(x_161) + x_165);
  let x_167 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_173 : f32 = x_39.unity_MatrixV[0i].z;
  u_xlat6.x = x_173;
  let x_177 : f32 = x_39.unity_MatrixV[1i].z;
  u_xlat6.y = x_177;
  let x_181 : f32 = x_39.unity_MatrixV[2i].z;
  u_xlat6.z = x_181;
  let x_183 : vec4<f32> = u_xlat5;
  let x_185 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), x_185);
  let x_187 : vec3<f32> = vs_TEXCOORD5;
  let x_190 : vec4<f32> = x_39.unity_ShadowFadeCenterAndType;
  let x_193 : vec3<f32> = (x_187 + -(vec3<f32>(x_190.x, x_190.y, x_190.z)));
  let x_194 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_197 : vec4<f32> = u_xlat5;
  let x_199 : vec4<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_202 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_202);
  let x_204 : f32 = u_xlat21;
  let x_206 : f32 = u_xlat22;
  u_xlat22 = (-(x_204) + x_206);
  let x_209 : f32 = x_39.unity_ShadowFadeCenterAndType.w;
  let x_210 : f32 = u_xlat22;
  let x_212 : f32 = u_xlat21;
  u_xlat21 = ((x_209 * x_210) + x_212);
  let x_214 : f32 = u_xlat21;
  let x_216 : f32 = x_39.x_LightShadowData.z;
  let x_219 : f32 = x_39.x_LightShadowData.w;
  u_xlat21 = ((x_214 * x_216) + x_219);
  let x_221 : f32 = u_xlat21;
  u_xlat21 = clamp(x_221, 0.0f, 1.0f);
  let x_230 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_230 == 1.0f);
  let x_232 : bool = u_xlatb22;
  if (x_232) {
    let x_236 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_236 == 1.0f);
    let x_238 : vec3<f32> = vs_TEXCOORD5;
    let x_242 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_244 : vec3<f32> = (vec3<f32>(x_238.y, x_238.y, x_238.y) * vec3<f32>(x_242.x, x_242.y, x_242.z));
    let x_245 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
    let x_248 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_250 : vec3<f32> = vs_TEXCOORD5;
    let x_253 : vec4<f32> = u_xlat5;
    let x_255 : vec3<f32> = ((vec3<f32>(x_248.x, x_248.y, x_248.z) * vec3<f32>(x_250.x, x_250.x, x_250.x)) + vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_259 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_261 : vec3<f32> = vs_TEXCOORD5;
    let x_264 : vec4<f32> = u_xlat5;
    let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.z, x_261.z, x_261.z)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
    let x_267 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_269 : vec4<f32> = u_xlat5;
    let x_272 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_274 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_272.x, x_272.y, x_272.z));
    let x_275 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : bool = u_xlatb22;
    if (x_277) {
      let x_282 : vec4<f32> = u_xlat5;
      x_279 = vec3<f32>(x_282.x, x_282.y, x_282.z);
    } else {
      let x_285 : vec3<f32> = vs_TEXCOORD5;
      x_279 = x_285;
    }
    let x_286 : vec3<f32> = x_279;
    let x_287 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
    let x_289 : vec4<f32> = u_xlat5;
    let x_293 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_295 : vec3<f32> = (vec3<f32>(x_289.x, x_289.y, x_289.z) + -(x_293));
    let x_296 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_298 : vec4<f32> = u_xlat5;
    let x_302 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.y, x_298.z) * x_302);
    let x_304 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_304.x, x_303.x, x_303.y, x_303.z);
    let x_307 : f32 = u_xlat5.y;
    u_xlat22 = ((x_307 * 0.25f) + 0.75f);
    let x_314 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_314 * 0.5f) + 0.75f);
    let x_318 : f32 = u_xlat22;
    let x_319 : f32 = u_xlat23;
    u_xlat5.x = max(x_318, x_319);
    let x_330 : vec4<f32> = u_xlat5;
    let x_332 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_330.x, x_330.z, x_330.w));
    u_xlat5 = x_332;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_338 : vec4<f32> = u_xlat5;
  let x_340 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_338, x_340);
  let x_342 : f32 = u_xlat22;
  u_xlat22 = clamp(x_342, 0.0f, 1.0f);
  let x_344 : vec3<f32> = vs_TEXCOORD5;
  let x_347 : vec4<f32> = x_39.unity_WorldToShadow[0i][1i];
  u_xlat5 = (vec4<f32>(x_344.y, x_344.y, x_344.y, x_344.y) * x_347);
  let x_350 : vec4<f32> = x_39.unity_WorldToShadow[0i][0i];
  let x_351 : vec3<f32> = vs_TEXCOORD5;
  let x_354 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_350 * vec4<f32>(x_351.x, x_351.x, x_351.x, x_351.x)) + x_354);
  let x_357 : vec4<f32> = x_39.unity_WorldToShadow[0i][2i];
  let x_358 : vec3<f32> = vs_TEXCOORD5;
  let x_361 : vec4<f32> = u_xlat5;
  u_xlat5 = ((x_357 * vec4<f32>(x_358.z, x_358.z, x_358.z, x_358.z)) + x_361);
  let x_363 : vec4<f32> = u_xlat5;
  let x_365 : vec4<f32> = x_39.unity_WorldToShadow[0i][3i];
  u_xlat5 = (x_363 + x_365);
  let x_367 : vec4<f32> = u_xlat5;
  let x_369 : vec4<f32> = u_xlat5;
  let x_371 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) / vec3<f32>(x_369.w, x_369.w, x_369.w));
  let x_372 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : vec4<f32> = u_xlat5;
  let x_376 : vec2<f32> = vec2<f32>(x_375.x, x_375.y);
  let x_378 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_376.x, x_376.y, x_378);
  let x_390 : vec3<f32> = txVec0;
  let x_392 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_390.xy, x_390.z);
  u_xlat23 = x_392;
  let x_395 : f32 = x_39.x_LightShadowData.x;
  u_xlat24 = (-(x_395) + 1.0f);
  let x_398 : f32 = u_xlat23;
  let x_399 : f32 = u_xlat24;
  let x_402 : f32 = x_39.x_LightShadowData.x;
  u_xlat23 = ((x_398 * x_399) + x_402);
  let x_404 : f32 = u_xlat22;
  let x_405 : f32 = u_xlat23;
  u_xlat22 = (x_404 + -(x_405));
  let x_408 : f32 = u_xlat21;
  let x_409 : f32 = u_xlat22;
  let x_411 : f32 = u_xlat23;
  u_xlat21 = ((x_408 * x_409) + x_411);
  let x_414 : f32 = u_xlat4.z;
  u_xlatb22 = (0.0f < x_414);
  let x_416 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_416);
  let x_418 : vec4<f32> = u_xlat4;
  let x_420 : vec4<f32> = u_xlat4;
  let x_422 : vec2<f32> = (vec2<f32>(x_418.x, x_418.y) / vec2<f32>(x_420.w, x_420.w));
  let x_423 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat5;
  let x_428 : vec2<f32> = (vec2<f32>(x_425.x, x_425.y) + vec2<f32>(0.5f, 0.5f));
  let x_429 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
  let x_436 : vec4<f32> = u_xlat5;
  let x_438 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_436.x, x_436.y));
  u_xlat23 = x_438.w;
  let x_440 : f32 = u_xlat22;
  let x_441 : f32 = u_xlat23;
  u_xlat22 = (x_440 * x_441);
  let x_443 : vec4<f32> = u_xlat4;
  let x_445 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_453 : f32 = u_xlat23;
  let x_455 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_453, x_453));
  u_xlat23 = x_455.x;
  let x_457 : f32 = u_xlat22;
  let x_458 : f32 = u_xlat23;
  u_xlat22 = (x_457 * x_458);
  let x_460 : f32 = u_xlat21;
  let x_461 : f32 = u_xlat22;
  u_xlat21 = (x_460 * x_461);
  let x_466 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_466;
  let x_470 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_470;
  let x_473 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_473;
  let x_475 : vec4<f32> = u_xlat4;
  let x_477 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_475.x, x_475.y, x_475.z), vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_480 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_480);
  let x_482 : f32 = u_xlat22;
  let x_484 : vec4<f32> = u_xlat4;
  let x_486 : vec3<f32> = (vec3<f32>(x_482, x_482, x_482) * vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : f32 = u_xlat21;
  let x_493 : vec4<f32> = x_39.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_489, x_489, x_489) * vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_498 : f32 = x_39.x_Glossiness;
  u_xlat21 = (-(x_498) + 1.0f);
  let x_501 : vec4<f32> = u_xlat4;
  let x_503 : f32 = u_xlat22;
  let x_506 : vec3<f32> = u_xlat3;
  let x_508 : vec3<f32> = ((vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(x_503, x_503, x_503)) + -(x_506));
  let x_509 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat4;
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_511.x, x_511.y, x_511.z), vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : f32 = u_xlat22;
  u_xlat22 = max(x_516, 0.001f);
  let x_519 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_519);
  let x_521 : f32 = u_xlat22;
  let x_523 : vec4<f32> = u_xlat4;
  let x_525 : vec3<f32> = (vec3<f32>(x_521, x_521, x_521) * vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_526 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_525.x, x_525.y, x_525.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat2;
  let x_530 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_528.x, x_528.y, x_528.z), -(x_530));
  let x_533 : vec4<f32> = u_xlat2;
  let x_535 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : f32 = u_xlat23;
  u_xlat23 = clamp(x_538, 0.0f, 1.0f);
  let x_540 : vec4<f32> = u_xlat2;
  let x_542 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_540.x, x_540.y, x_540.z), vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_547 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_547, 0.0f, 1.0f);
  let x_551 : vec4<f32> = u_xlat5;
  let x_553 : vec4<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_551.x, x_551.y, x_551.z), vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : f32 = u_xlat9;
  u_xlat9 = clamp(x_556, 0.0f, 1.0f);
  let x_559 : f32 = u_xlat9;
  let x_560 : f32 = u_xlat9;
  u_xlat16 = (x_559 * x_560);
  let x_562 : f32 = u_xlat16;
  let x_564 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_562, x_562), vec2<f32>(x_564, x_564));
  let x_567 : f32 = u_xlat16;
  u_xlat16 = (x_567 + -0.5f);
  let x_570 : f32 = u_xlat23;
  u_xlat3.x = (-(x_570) + 1.0f);
  let x_576 : f32 = u_xlat3.x;
  let x_578 : f32 = u_xlat3.x;
  u_xlat10 = (x_576 * x_578);
  let x_580 : f32 = u_xlat10;
  let x_581 : f32 = u_xlat10;
  u_xlat10 = (x_580 * x_581);
  let x_584 : f32 = u_xlat3.x;
  let x_585 : f32 = u_xlat10;
  u_xlat3.x = (x_584 * x_585);
  let x_588 : f32 = u_xlat16;
  let x_590 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_588 * x_590) + 1.0f);
  let x_594 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_594)) + 1.0f);
  let x_599 : f32 = u_xlat10;
  let x_600 : f32 = u_xlat10;
  u_xlat17 = (x_599 * x_600);
  let x_602 : f32 = u_xlat17;
  let x_603 : f32 = u_xlat17;
  u_xlat17 = (x_602 * x_603);
  let x_605 : f32 = u_xlat10;
  let x_606 : f32 = u_xlat17;
  u_xlat10 = (x_605 * x_606);
  let x_608 : f32 = u_xlat16;
  let x_609 : f32 = u_xlat10;
  u_xlat16 = ((x_608 * x_609) + 1.0f);
  let x_612 : f32 = u_xlat16;
  let x_614 : f32 = u_xlat3.x;
  u_xlat16 = (x_612 * x_614);
  let x_616 : f32 = u_xlat23;
  let x_617 : f32 = u_xlat16;
  u_xlat16 = (x_616 * x_617);
  let x_619 : f32 = u_xlat21;
  let x_620 : f32 = u_xlat21;
  u_xlat21 = (x_619 * x_620);
  let x_622 : f32 = u_xlat21;
  u_xlat21 = max(x_622, 0.002f);
  let x_625 : f32 = u_xlat21;
  u_xlat3.x = (-(x_625) + 1.0f);
  let x_629 : f32 = u_xlat22;
  let x_632 : f32 = u_xlat3.x;
  let x_634 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_629) * x_632) + x_634);
  let x_636 : f32 = u_xlat23;
  let x_638 : f32 = u_xlat3.x;
  let x_640 : f32 = u_xlat21;
  u_xlat3.x = ((x_636 * x_638) + x_640);
  let x_643 : f32 = u_xlat22;
  let x_646 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_643) * x_646);
  let x_648 : f32 = u_xlat23;
  let x_649 : f32 = u_xlat10;
  let x_651 : f32 = u_xlat22;
  u_xlat22 = ((x_648 * x_649) + x_651);
  let x_653 : f32 = u_xlat22;
  u_xlat22 = (x_653 + 0.00001f);
  let x_656 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_656);
  let x_658 : f32 = u_xlat21;
  let x_659 : f32 = u_xlat21;
  u_xlat21 = (x_658 * x_659);
  let x_662 : f32 = u_xlat2.x;
  let x_663 : f32 = u_xlat21;
  let x_666 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_662 * x_663) + -(x_666));
  let x_671 : f32 = u_xlat3.x;
  let x_673 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_671 * x_673) + 1.0f);
  let x_677 : f32 = u_xlat21;
  u_xlat21 = (x_677 * 0.318309873f);
  let x_681 : f32 = u_xlat2.x;
  let x_683 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_681 * x_683) + 0.0000001f);
  let x_688 : f32 = u_xlat21;
  let x_690 : f32 = u_xlat2.x;
  u_xlat21 = (x_688 / x_690);
  let x_692 : f32 = u_xlat21;
  let x_693 : f32 = u_xlat22;
  u_xlat21 = (x_692 * x_693);
  let x_695 : f32 = u_xlat23;
  let x_696 : f32 = u_xlat21;
  u_xlat21 = (x_695 * x_696);
  let x_698 : f32 = u_xlat21;
  u_xlat21 = (x_698 * 3.141592741f);
  let x_701 : f32 = u_xlat21;
  u_xlat21 = max(x_701, 0.0f);
  let x_703 : vec4<f32> = u_xlat0;
  let x_705 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_703.x, x_703.y, x_703.z), vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : f32 = u_xlat22;
  u_xlatb22 = !((x_708 == 0.0f));
  let x_710 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_710);
  let x_712 : f32 = u_xlat21;
  let x_713 : f32 = u_xlat22;
  u_xlat21 = (x_712 * x_713);
  let x_715 : f32 = u_xlat16;
  let x_717 : vec3<f32> = u_xlat6;
  let x_718 : vec3<f32> = (vec3<f32>(x_715, x_715, x_715) * x_717);
  let x_719 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_718.x, x_719.y, x_718.y, x_718.z);
  let x_721 : vec3<f32> = u_xlat6;
  let x_722 : f32 = u_xlat21;
  u_xlat3 = (x_721 * vec3<f32>(x_722, x_722, x_722));
  let x_725 : f32 = u_xlat9;
  u_xlat21 = (-(x_725) + 1.0f);
  let x_728 : f32 = u_xlat21;
  let x_729 : f32 = u_xlat21;
  u_xlat22 = (x_728 * x_729);
  let x_731 : f32 = u_xlat22;
  let x_732 : f32 = u_xlat22;
  u_xlat22 = (x_731 * x_732);
  let x_734 : f32 = u_xlat21;
  let x_735 : f32 = u_xlat22;
  u_xlat21 = (x_734 * x_735);
  let x_737 : vec4<f32> = u_xlat0;
  let x_741 : vec3<f32> = (-(vec3<f32>(x_737.x, x_737.y, x_737.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_742 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_744 : vec4<f32> = u_xlat4;
  let x_746 : f32 = u_xlat21;
  let x_749 : vec4<f32> = u_xlat0;
  let x_751 : vec3<f32> = ((vec3<f32>(x_744.x, x_744.y, x_744.z) * vec3<f32>(x_746, x_746, x_746)) + vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec4<f32> = u_xlat0;
  let x_756 : vec3<f32> = u_xlat3;
  let x_757 : vec3<f32> = (vec3<f32>(x_754.x, x_754.y, x_754.z) * x_756);
  let x_758 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec3<f32> = u_xlat1;
  let x_761 : vec4<f32> = u_xlat2;
  let x_764 : vec4<f32> = u_xlat0;
  let x_766 : vec3<f32> = ((x_760 * vec3<f32>(x_761.x, x_761.z, x_761.w)) + vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
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

