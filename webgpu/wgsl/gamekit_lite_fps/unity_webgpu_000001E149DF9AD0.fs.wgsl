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
  x_ShadowMapTexture_TexelSize : vec4<f32>,
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

var<private> u_xlat33 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlatb34 : bool;

var<private> u_xlat35 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb35 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat28 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(5) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler_comparison;

var<private> u_xlat36 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlat14 : f32;

var<private> u_xlat25 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_280 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
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
  u_xlat33 = ((-(x_90) * 0.959999979f) + 0.959999979f);
  let x_95 : f32 = u_xlat33;
  let x_97 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_95, x_95, x_95) * x_97);
  let x_100 : vec4<f32> = vs_TEXCOORD4;
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  u_xlat33 = dot(vec3<f32>(x_100.x, x_100.y, x_100.z), vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_105);
  let x_108 : f32 = u_xlat33;
  let x_110 : vec4<f32> = vs_TEXCOORD4;
  let x_112 : vec3<f32> = (vec3<f32>(x_108, x_108, x_108) * vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_116 : vec4<f32> = vs_TEXCOORD1;
  let x_118 : vec4<f32> = vs_TEXCOORD1;
  u_xlat33 = dot(vec3<f32>(x_116.x, x_116.y, x_116.z), vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_121);
  let x_124 : f32 = u_xlat33;
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
  let x_185 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_183.x, x_183.y, x_183.z), vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec3<f32> = vs_TEXCOORD5;
  let x_191 : vec4<f32> = x_39.unity_ShadowFadeCenterAndType;
  let x_194 : vec3<f32> = (x_188 + -(vec3<f32>(x_191.x, x_191.y, x_191.z)));
  let x_195 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_198 : vec4<f32> = u_xlat5;
  let x_200 : vec4<f32> = u_xlat5;
  u_xlat34 = dot(vec3<f32>(x_198.x, x_198.y, x_198.z), vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_203 : f32 = u_xlat34;
  u_xlat34 = sqrt(x_203);
  let x_205 : f32 = u_xlat33;
  let x_207 : f32 = u_xlat34;
  u_xlat34 = (-(x_205) + x_207);
  let x_210 : f32 = x_39.unity_ShadowFadeCenterAndType.w;
  let x_211 : f32 = u_xlat34;
  let x_213 : f32 = u_xlat33;
  u_xlat33 = ((x_210 * x_211) + x_213);
  let x_215 : f32 = u_xlat33;
  let x_217 : f32 = x_39.x_LightShadowData.z;
  let x_220 : f32 = x_39.x_LightShadowData.w;
  u_xlat33 = ((x_215 * x_217) + x_220);
  let x_222 : f32 = u_xlat33;
  u_xlat33 = clamp(x_222, 0.0f, 1.0f);
  let x_231 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb34 = (x_231 == 1.0f);
  let x_233 : bool = u_xlatb34;
  if (x_233) {
    let x_237 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb34 = (x_237 == 1.0f);
    let x_239 : vec3<f32> = vs_TEXCOORD5;
    let x_243 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_245 : vec3<f32> = (vec3<f32>(x_239.y, x_239.y, x_239.y) * vec3<f32>(x_243.x, x_243.y, x_243.z));
    let x_246 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
    let x_249 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_251 : vec3<f32> = vs_TEXCOORD5;
    let x_254 : vec4<f32> = u_xlat5;
    let x_256 : vec3<f32> = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251.x, x_251.x, x_251.x)) + vec3<f32>(x_254.x, x_254.y, x_254.z));
    let x_257 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    let x_260 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_262 : vec3<f32> = vs_TEXCOORD5;
    let x_265 : vec4<f32> = u_xlat5;
    let x_267 : vec3<f32> = ((vec3<f32>(x_260.x, x_260.y, x_260.z) * vec3<f32>(x_262.z, x_262.z, x_262.z)) + vec3<f32>(x_265.x, x_265.y, x_265.z));
    let x_268 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
    let x_270 : vec4<f32> = u_xlat5;
    let x_273 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_275 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.z) + vec3<f32>(x_273.x, x_273.y, x_273.z));
    let x_276 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
    let x_278 : bool = u_xlatb34;
    if (x_278) {
      let x_283 : vec4<f32> = u_xlat5;
      x_280 = vec3<f32>(x_283.x, x_283.y, x_283.z);
    } else {
      let x_286 : vec3<f32> = vs_TEXCOORD5;
      x_280 = x_286;
    }
    let x_287 : vec3<f32> = x_280;
    let x_288 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
    let x_290 : vec4<f32> = u_xlat5;
    let x_294 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_296 : vec3<f32> = (vec3<f32>(x_290.x, x_290.y, x_290.z) + -(x_294));
    let x_297 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
    let x_299 : vec4<f32> = u_xlat5;
    let x_303 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_304 : vec3<f32> = (vec3<f32>(x_299.x, x_299.y, x_299.z) * x_303);
    let x_305 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_305.x, x_304.x, x_304.y, x_304.z);
    let x_308 : f32 = u_xlat5.y;
    u_xlat34 = ((x_308 * 0.25f) + 0.75f);
    let x_315 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat35 = ((x_315 * 0.5f) + 0.75f);
    let x_319 : f32 = u_xlat34;
    let x_320 : f32 = u_xlat35;
    u_xlat5.x = max(x_319, x_320);
    let x_331 : vec4<f32> = u_xlat5;
    let x_333 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_331.x, x_331.z, x_331.w));
    u_xlat5 = x_333;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_339 : vec4<f32> = u_xlat5;
  let x_341 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat34 = dot(x_339, x_341);
  let x_343 : f32 = u_xlat34;
  u_xlat34 = clamp(x_343, 0.0f, 1.0f);
  let x_346 : f32 = u_xlat33;
  u_xlatb35 = (x_346 < 0.99000001f);
  let x_349 : bool = u_xlatb35;
  if (x_349) {
    let x_352 : vec3<f32> = vs_TEXCOORD5;
    let x_355 : vec4<f32> = x_39.unity_WorldToShadow[0i][1i];
    u_xlat5 = (vec4<f32>(x_352.y, x_352.y, x_352.y, x_352.y) * x_355);
    let x_358 : vec4<f32> = x_39.unity_WorldToShadow[0i][0i];
    let x_359 : vec3<f32> = vs_TEXCOORD5;
    let x_362 : vec4<f32> = u_xlat5;
    u_xlat5 = ((x_358 * vec4<f32>(x_359.x, x_359.x, x_359.x, x_359.x)) + x_362);
    let x_365 : vec4<f32> = x_39.unity_WorldToShadow[0i][2i];
    let x_366 : vec3<f32> = vs_TEXCOORD5;
    let x_369 : vec4<f32> = u_xlat5;
    u_xlat5 = ((x_365 * vec4<f32>(x_366.z, x_366.z, x_366.z, x_366.z)) + x_369);
    let x_371 : vec4<f32> = u_xlat5;
    let x_373 : vec4<f32> = x_39.unity_WorldToShadow[0i][3i];
    u_xlat5 = (x_371 + x_373);
    let x_375 : vec4<f32> = u_xlat5;
    let x_377 : vec4<f32> = u_xlat5;
    let x_379 : vec3<f32> = (vec3<f32>(x_375.x, x_375.y, x_375.z) / vec3<f32>(x_377.w, x_377.w, x_377.w));
    let x_380 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
    let x_382 : vec4<f32> = u_xlat5;
    let x_386 : vec4<f32> = x_39.x_ShadowMapTexture_TexelSize;
    let x_390 : vec2<f32> = ((vec2<f32>(x_382.x, x_382.y) * vec2<f32>(x_386.z, x_386.w)) + vec2<f32>(0.5f, 0.5f));
    let x_391 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
    let x_393 : vec4<f32> = u_xlat6;
    let x_395 : vec2<f32> = floor(vec2<f32>(x_393.x, x_393.y));
    let x_396 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_395.x, x_395.y, x_396.z, x_396.w);
    let x_398 : vec4<f32> = u_xlat5;
    let x_401 : vec4<f32> = x_39.x_ShadowMapTexture_TexelSize;
    let x_404 : vec4<f32> = u_xlat6;
    let x_407 : vec2<f32> = ((vec2<f32>(x_398.x, x_398.y) * vec2<f32>(x_401.z, x_401.w)) + -(vec2<f32>(x_404.x, x_404.y)));
    let x_408 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
    let x_411 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec4<f32>(x_411.x, x_411.x, x_411.y, x_411.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
    let x_416 : vec4<f32> = u_xlat7;
    let x_418 : vec4<f32> = u_xlat7;
    let x_420 : vec2<f32> = (vec2<f32>(x_416.x, x_416.z) * vec2<f32>(x_418.x, x_418.z));
    let x_421 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_420.x, x_421.y, x_421.z, x_420.y);
    let x_425 : vec4<f32> = u_xlat8;
    let x_428 : vec4<f32> = u_xlat5;
    u_xlat28 = ((vec2<f32>(x_425.x, x_425.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_428.x, x_428.y)));
    let x_432 : vec4<f32> = u_xlat5;
    let x_436 : vec2<f32> = (-(vec2<f32>(x_432.x, x_432.y)) + vec2<f32>(1.0f, 1.0f));
    let x_437 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_436.x, x_437.y, x_436.y, x_437.w);
    let x_440 : vec4<f32> = u_xlat5;
    let x_443 : vec2<f32> = min(vec2<f32>(x_440.x, x_440.y), vec2<f32>(0.0f, 0.0f));
    let x_444 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
    let x_446 : vec4<f32> = u_xlat9;
    let x_449 : vec4<f32> = u_xlat9;
    let x_452 : vec4<f32> = u_xlat7;
    let x_454 : vec2<f32> = ((-(vec2<f32>(x_446.x, x_446.y)) * vec2<f32>(x_449.x, x_449.y)) + vec2<f32>(x_452.x, x_452.z));
    let x_455 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_454.x, x_455.y, x_454.y, x_455.w);
    let x_457 : vec4<f32> = u_xlat5;
    let x_459 : vec2<f32> = max(vec2<f32>(x_457.x, x_457.y), vec2<f32>(0.0f, 0.0f));
    let x_460 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
    let x_462 : vec4<f32> = u_xlat5;
    let x_465 : vec4<f32> = u_xlat5;
    let x_468 : vec4<f32> = u_xlat7;
    let x_470 : vec2<f32> = ((-(vec2<f32>(x_462.x, x_462.y)) * vec2<f32>(x_465.x, x_465.y)) + vec2<f32>(x_468.y, x_468.w));
    let x_471 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
    let x_474 : f32 = u_xlat28.x;
    u_xlat9.x = x_474;
    let x_477 : f32 = u_xlat7.x;
    u_xlat9.y = x_477;
    let x_480 : f32 = u_xlat5.x;
    u_xlat9.z = x_480;
    let x_483 : f32 = u_xlat8.x;
    u_xlat9.w = x_483;
    let x_485 : vec4<f32> = u_xlat9;
    u_xlat9 = (x_485 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_491 : f32 = u_xlat28.y;
    u_xlat8.x = x_491;
    let x_494 : f32 = u_xlat7.z;
    u_xlat8.y = x_494;
    let x_497 : f32 = u_xlat5.y;
    u_xlat8.z = x_497;
    let x_499 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_499 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_501 : vec4<f32> = u_xlat9;
    let x_503 : vec4<f32> = u_xlat9;
    u_xlat8 = (vec4<f32>(x_501.y, x_501.w, x_501.y, x_501.w) + vec4<f32>(x_503.x, x_503.z, x_503.x, x_503.z));
    let x_507 : vec4<f32> = u_xlat7;
    let x_509 : vec4<f32> = u_xlat7;
    u_xlat10 = (vec4<f32>(x_507.y, x_507.y, x_507.w, x_507.w) + vec4<f32>(x_509.x, x_509.x, x_509.z, x_509.z));
    let x_512 : vec4<f32> = u_xlat9;
    let x_514 : vec4<f32> = u_xlat8;
    let x_516 : vec2<f32> = (vec2<f32>(x_512.y, x_512.w) / vec2<f32>(x_514.z, x_514.w));
    let x_517 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_516.x, x_516.y, x_517.z, x_517.w);
    let x_519 : vec4<f32> = u_xlat5;
    let x_523 : vec2<f32> = (vec2<f32>(x_519.x, x_519.y) + vec2<f32>(-1.5f, 0.5f));
    let x_524 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
    let x_526 : vec4<f32> = u_xlat7;
    let x_528 : vec4<f32> = u_xlat10;
    u_xlat28 = (vec2<f32>(x_526.y, x_526.w) / vec2<f32>(x_528.y, x_528.w));
    let x_531 : vec2<f32> = u_xlat28;
    u_xlat28 = (x_531 + vec2<f32>(-1.5f, 0.5f));
    let x_533 : vec4<f32> = u_xlat5;
    let x_536 : vec4<f32> = x_39.x_ShadowMapTexture_TexelSize;
    let x_538 : vec2<f32> = (vec2<f32>(x_533.x, x_533.y) * vec2<f32>(x_536.x, x_536.x));
    let x_539 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
    let x_541 : vec2<f32> = u_xlat28;
    let x_543 : vec4<f32> = x_39.x_ShadowMapTexture_TexelSize;
    let x_545 : vec2<f32> = (x_541 * vec2<f32>(x_543.y, x_543.y));
    let x_546 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_545.x, x_545.y);
    let x_548 : vec4<f32> = u_xlat8;
    let x_549 : vec4<f32> = u_xlat10;
    u_xlat8 = (x_548 * x_549);
    let x_551 : vec4<f32> = u_xlat6;
    let x_554 : vec4<f32> = x_39.x_ShadowMapTexture_TexelSize;
    let x_557 : vec4<f32> = u_xlat7;
    u_xlat9 = ((vec4<f32>(x_551.x, x_551.y, x_551.x, x_551.y) * vec4<f32>(x_554.x, x_554.y, x_554.x, x_554.y)) + vec4<f32>(x_557.x, x_557.z, x_557.y, x_557.z));
    let x_561 : vec4<f32> = u_xlat9;
    let x_562 : vec2<f32> = vec2<f32>(x_561.x, x_561.y);
    let x_564 : f32 = u_xlat5.z;
    txVec0 = vec3<f32>(x_562.x, x_562.y, x_564);
    let x_576 : vec3<f32> = txVec0;
    let x_578 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_576.xy, x_576.z);
    u_xlat35 = x_578;
    let x_580 : vec4<f32> = u_xlat9;
    let x_581 : vec2<f32> = vec2<f32>(x_580.z, x_580.w);
    let x_583 : f32 = u_xlat5.z;
    txVec1 = vec3<f32>(x_581.x, x_581.y, x_583);
    let x_591 : vec3<f32> = txVec1;
    let x_593 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_591.xy, x_591.z);
    u_xlat36 = x_593;
    let x_594 : f32 = u_xlat36;
    let x_596 : f32 = u_xlat8.y;
    u_xlat36 = (x_594 * x_596);
    let x_599 : f32 = u_xlat8.x;
    let x_600 : f32 = u_xlat35;
    let x_602 : f32 = u_xlat36;
    u_xlat35 = ((x_599 * x_600) + x_602);
    let x_604 : vec4<f32> = u_xlat6;
    let x_607 : vec4<f32> = x_39.x_ShadowMapTexture_TexelSize;
    let x_610 : vec4<f32> = u_xlat7;
    u_xlat6 = ((vec4<f32>(x_604.x, x_604.y, x_604.x, x_604.y) * vec4<f32>(x_607.x, x_607.y, x_607.x, x_607.y)) + vec4<f32>(x_610.x, x_610.w, x_610.y, x_610.w));
    let x_614 : vec4<f32> = u_xlat6;
    let x_615 : vec2<f32> = vec2<f32>(x_614.x, x_614.y);
    let x_617 : f32 = u_xlat5.z;
    txVec2 = vec3<f32>(x_615.x, x_615.y, x_617);
    let x_624 : vec3<f32> = txVec2;
    let x_626 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_624.xy, x_624.z);
    u_xlat36 = x_626;
    let x_628 : f32 = u_xlat8.z;
    let x_629 : f32 = u_xlat36;
    let x_631 : f32 = u_xlat35;
    u_xlat35 = ((x_628 * x_629) + x_631);
    let x_634 : vec4<f32> = u_xlat6;
    let x_635 : vec2<f32> = vec2<f32>(x_634.z, x_634.w);
    let x_637 : f32 = u_xlat5.z;
    txVec3 = vec3<f32>(x_635.x, x_635.y, x_637);
    let x_644 : vec3<f32> = txVec3;
    let x_646 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_644.xy, x_644.z);
    u_xlat36 = x_646;
    let x_648 : f32 = u_xlat8.w;
    let x_649 : f32 = u_xlat36;
    let x_651 : f32 = u_xlat35;
    u_xlat35 = ((x_648 * x_649) + x_651);
    let x_654 : f32 = x_39.x_LightShadowData.x;
    u_xlat36 = (-(x_654) + 1.0f);
    let x_657 : f32 = u_xlat35;
    let x_658 : f32 = u_xlat36;
    let x_661 : f32 = x_39.x_LightShadowData.x;
    u_xlat35 = ((x_657 * x_658) + x_661);
  } else {
    u_xlat35 = 1.0f;
  }
  let x_664 : f32 = u_xlat34;
  let x_665 : f32 = u_xlat35;
  u_xlat34 = (x_664 + -(x_665));
  let x_668 : f32 = u_xlat33;
  let x_669 : f32 = u_xlat34;
  let x_671 : f32 = u_xlat35;
  u_xlat33 = ((x_668 * x_669) + x_671);
  let x_674 : f32 = u_xlat4.z;
  u_xlatb34 = (0.0f < x_674);
  let x_676 : bool = u_xlatb34;
  u_xlat34 = select(0.0f, 1.0f, x_676);
  let x_678 : vec4<f32> = u_xlat4;
  let x_680 : vec4<f32> = u_xlat4;
  let x_682 : vec2<f32> = (vec2<f32>(x_678.x, x_678.y) / vec2<f32>(x_680.w, x_680.w));
  let x_683 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat5;
  let x_687 : vec2<f32> = (vec2<f32>(x_685.x, x_685.y) + vec2<f32>(0.5f, 0.5f));
  let x_688 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
  let x_695 : vec4<f32> = u_xlat5;
  let x_697 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_695.x, x_695.y));
  u_xlat35 = x_697.w;
  let x_699 : f32 = u_xlat34;
  let x_700 : f32 = u_xlat35;
  u_xlat34 = (x_699 * x_700);
  let x_702 : vec4<f32> = u_xlat4;
  let x_704 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec3<f32>(x_702.x, x_702.y, x_702.z), vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_712 : f32 = u_xlat35;
  let x_714 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_712, x_712));
  u_xlat35 = x_714.x;
  let x_716 : f32 = u_xlat34;
  let x_717 : f32 = u_xlat35;
  u_xlat34 = (x_716 * x_717);
  let x_719 : f32 = u_xlat33;
  let x_720 : f32 = u_xlat34;
  u_xlat33 = (x_719 * x_720);
  let x_725 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_725;
  let x_729 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_729;
  let x_732 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_732;
  let x_734 : vec4<f32> = u_xlat4;
  let x_736 : vec4<f32> = u_xlat4;
  u_xlat34 = dot(vec3<f32>(x_734.x, x_734.y, x_734.z), vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_739);
  let x_741 : f32 = u_xlat34;
  let x_743 : vec4<f32> = u_xlat4;
  let x_745 : vec3<f32> = (vec3<f32>(x_741, x_741, x_741) * vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  let x_748 : f32 = u_xlat33;
  let x_752 : vec4<f32> = x_39.x_LightColor0;
  let x_754 : vec3<f32> = (vec3<f32>(x_748, x_748, x_748) * vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_755 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_759 : f32 = x_39.x_Glossiness;
  u_xlat33 = (-(x_759) + 1.0f);
  let x_762 : vec4<f32> = u_xlat4;
  let x_764 : f32 = u_xlat34;
  let x_767 : vec3<f32> = u_xlat3;
  let x_769 : vec3<f32> = ((vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(x_764, x_764, x_764)) + -(x_767));
  let x_770 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat4;
  let x_774 : vec4<f32> = u_xlat4;
  u_xlat34 = dot(vec3<f32>(x_772.x, x_772.y, x_772.z), vec3<f32>(x_774.x, x_774.y, x_774.z));
  let x_777 : f32 = u_xlat34;
  u_xlat34 = max(x_777, 0.001f);
  let x_780 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_780);
  let x_782 : f32 = u_xlat34;
  let x_784 : vec4<f32> = u_xlat4;
  let x_786 : vec3<f32> = (vec3<f32>(x_782, x_782, x_782) * vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_787 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec4<f32> = u_xlat2;
  let x_791 : vec3<f32> = u_xlat3;
  u_xlat34 = dot(vec3<f32>(x_789.x, x_789.y, x_789.z), -(x_791));
  let x_794 : vec4<f32> = u_xlat2;
  let x_796 : vec4<f32> = u_xlat5;
  u_xlat35 = dot(vec3<f32>(x_794.x, x_794.y, x_794.z), vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : f32 = u_xlat35;
  u_xlat35 = clamp(x_799, 0.0f, 1.0f);
  let x_801 : vec4<f32> = u_xlat2;
  let x_803 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_801.x, x_801.y, x_801.z), vec3<f32>(x_803.x, x_803.y, x_803.z));
  let x_808 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_808, 0.0f, 1.0f);
  let x_812 : vec4<f32> = u_xlat5;
  let x_814 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(vec3<f32>(x_812.x, x_812.y, x_812.z), vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : f32 = u_xlat13;
  u_xlat13 = clamp(x_817, 0.0f, 1.0f);
  let x_820 : f32 = u_xlat13;
  let x_821 : f32 = u_xlat13;
  u_xlat24 = (x_820 * x_821);
  let x_823 : f32 = u_xlat24;
  let x_825 : f32 = u_xlat33;
  u_xlat24 = dot(vec2<f32>(x_823, x_823), vec2<f32>(x_825, x_825));
  let x_828 : f32 = u_xlat24;
  u_xlat24 = (x_828 + -0.5f);
  let x_831 : f32 = u_xlat35;
  u_xlat3.x = (-(x_831) + 1.0f);
  let x_837 : f32 = u_xlat3.x;
  let x_839 : f32 = u_xlat3.x;
  u_xlat14 = (x_837 * x_839);
  let x_841 : f32 = u_xlat14;
  let x_842 : f32 = u_xlat14;
  u_xlat14 = (x_841 * x_842);
  let x_845 : f32 = u_xlat3.x;
  let x_846 : f32 = u_xlat14;
  u_xlat3.x = (x_845 * x_846);
  let x_849 : f32 = u_xlat24;
  let x_851 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_849 * x_851) + 1.0f);
  let x_855 : f32 = u_xlat34;
  u_xlat14 = (-(abs(x_855)) + 1.0f);
  let x_860 : f32 = u_xlat14;
  let x_861 : f32 = u_xlat14;
  u_xlat25 = (x_860 * x_861);
  let x_863 : f32 = u_xlat25;
  let x_864 : f32 = u_xlat25;
  u_xlat25 = (x_863 * x_864);
  let x_866 : f32 = u_xlat14;
  let x_867 : f32 = u_xlat25;
  u_xlat14 = (x_866 * x_867);
  let x_869 : f32 = u_xlat24;
  let x_870 : f32 = u_xlat14;
  u_xlat24 = ((x_869 * x_870) + 1.0f);
  let x_873 : f32 = u_xlat24;
  let x_875 : f32 = u_xlat3.x;
  u_xlat24 = (x_873 * x_875);
  let x_877 : f32 = u_xlat35;
  let x_878 : f32 = u_xlat24;
  u_xlat24 = (x_877 * x_878);
  let x_880 : f32 = u_xlat33;
  let x_881 : f32 = u_xlat33;
  u_xlat33 = (x_880 * x_881);
  let x_883 : f32 = u_xlat33;
  u_xlat33 = max(x_883, 0.002f);
  let x_886 : f32 = u_xlat33;
  u_xlat3.x = (-(x_886) + 1.0f);
  let x_890 : f32 = u_xlat34;
  let x_893 : f32 = u_xlat3.x;
  let x_895 : f32 = u_xlat33;
  u_xlat14 = ((abs(x_890) * x_893) + x_895);
  let x_897 : f32 = u_xlat35;
  let x_899 : f32 = u_xlat3.x;
  let x_901 : f32 = u_xlat33;
  u_xlat3.x = ((x_897 * x_899) + x_901);
  let x_904 : f32 = u_xlat34;
  let x_907 : f32 = u_xlat3.x;
  u_xlat34 = (abs(x_904) * x_907);
  let x_909 : f32 = u_xlat35;
  let x_910 : f32 = u_xlat14;
  let x_912 : f32 = u_xlat34;
  u_xlat34 = ((x_909 * x_910) + x_912);
  let x_914 : f32 = u_xlat34;
  u_xlat34 = (x_914 + 0.00001f);
  let x_917 : f32 = u_xlat34;
  u_xlat34 = (0.5f / x_917);
  let x_919 : f32 = u_xlat33;
  let x_920 : f32 = u_xlat33;
  u_xlat33 = (x_919 * x_920);
  let x_923 : f32 = u_xlat2.x;
  let x_924 : f32 = u_xlat33;
  let x_927 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_923 * x_924) + -(x_927));
  let x_932 : f32 = u_xlat3.x;
  let x_934 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_932 * x_934) + 1.0f);
  let x_938 : f32 = u_xlat33;
  u_xlat33 = (x_938 * 0.318309873f);
  let x_942 : f32 = u_xlat2.x;
  let x_944 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_942 * x_944) + 0.0000001f);
  let x_949 : f32 = u_xlat33;
  let x_951 : f32 = u_xlat2.x;
  u_xlat33 = (x_949 / x_951);
  let x_953 : f32 = u_xlat33;
  let x_954 : f32 = u_xlat34;
  u_xlat33 = (x_953 * x_954);
  let x_956 : f32 = u_xlat35;
  let x_957 : f32 = u_xlat33;
  u_xlat33 = (x_956 * x_957);
  let x_959 : f32 = u_xlat33;
  u_xlat33 = (x_959 * 3.141592741f);
  let x_962 : f32 = u_xlat33;
  u_xlat33 = max(x_962, 0.0f);
  let x_964 : vec4<f32> = u_xlat0;
  let x_966 : vec4<f32> = u_xlat0;
  u_xlat34 = dot(vec3<f32>(x_964.x, x_964.y, x_964.z), vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_969 : f32 = u_xlat34;
  u_xlatb34 = !((x_969 == 0.0f));
  let x_971 : bool = u_xlatb34;
  u_xlat34 = select(0.0f, 1.0f, x_971);
  let x_973 : f32 = u_xlat33;
  let x_974 : f32 = u_xlat34;
  u_xlat33 = (x_973 * x_974);
  let x_976 : f32 = u_xlat24;
  let x_978 : vec4<f32> = u_xlat6;
  let x_980 : vec3<f32> = (vec3<f32>(x_976, x_976, x_976) * vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_981 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_980.x, x_981.y, x_980.y, x_980.z);
  let x_983 : vec4<f32> = u_xlat6;
  let x_985 : f32 = u_xlat33;
  u_xlat3 = (vec3<f32>(x_983.x, x_983.y, x_983.z) * vec3<f32>(x_985, x_985, x_985));
  let x_988 : f32 = u_xlat13;
  u_xlat33 = (-(x_988) + 1.0f);
  let x_991 : f32 = u_xlat33;
  let x_992 : f32 = u_xlat33;
  u_xlat34 = (x_991 * x_992);
  let x_994 : f32 = u_xlat34;
  let x_995 : f32 = u_xlat34;
  u_xlat34 = (x_994 * x_995);
  let x_997 : f32 = u_xlat33;
  let x_998 : f32 = u_xlat34;
  u_xlat33 = (x_997 * x_998);
  let x_1000 : vec4<f32> = u_xlat0;
  let x_1004 : vec3<f32> = (-(vec3<f32>(x_1000.x, x_1000.y, x_1000.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1005 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : vec4<f32> = u_xlat4;
  let x_1009 : f32 = u_xlat33;
  let x_1012 : vec4<f32> = u_xlat0;
  let x_1014 : vec3<f32> = ((vec3<f32>(x_1007.x, x_1007.y, x_1007.z) * vec3<f32>(x_1009, x_1009, x_1009)) + vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1015 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : vec4<f32> = u_xlat0;
  let x_1019 : vec3<f32> = u_xlat3;
  let x_1020 : vec3<f32> = (vec3<f32>(x_1017.x, x_1017.y, x_1017.z) * x_1019);
  let x_1021 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : vec3<f32> = u_xlat1;
  let x_1024 : vec4<f32> = u_xlat2;
  let x_1027 : vec4<f32> = u_xlat0;
  let x_1029 : vec3<f32> = ((x_1023 * vec3<f32>(x_1024.x, x_1024.z, x_1024.w)) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
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

