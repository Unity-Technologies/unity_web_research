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

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_36 : PGlobals;

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

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_265 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
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
  u_xlat33 = ((-(x_73) * 0.959999979f) + 0.959999979f);
  let x_78 : f32 = u_xlat33;
  let x_80 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_78, x_78, x_78) * x_80);
  let x_83 : vec4<f32> = vs_TEXCOORD4;
  let x_85 : vec4<f32> = vs_TEXCOORD4;
  u_xlat33 = dot(vec3<f32>(x_83.x, x_83.y, x_83.z), vec3<f32>(x_85.x, x_85.y, x_85.z));
  let x_88 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_88);
  let x_92 : f32 = u_xlat33;
  let x_94 : vec4<f32> = vs_TEXCOORD4;
  let x_96 : vec3<f32> = (vec3<f32>(x_92, x_92, x_92) * vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_100 : vec4<f32> = vs_TEXCOORD1;
  let x_102 : vec4<f32> = vs_TEXCOORD1;
  u_xlat33 = dot(vec3<f32>(x_100.x, x_100.y, x_100.z), vec3<f32>(x_102.x, x_102.y, x_102.z));
  let x_105 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_105);
  let x_108 : f32 = u_xlat33;
  let x_110 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_108, x_108, x_108) * vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_116 : vec3<f32> = vs_TEXCOORD5;
  let x_121 : vec4<f32> = x_36.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_116.y, x_116.y, x_116.y, x_116.y) * x_121);
  let x_125 : vec4<f32> = x_36.unity_WorldToLight[0i];
  let x_126 : vec3<f32> = vs_TEXCOORD5;
  let x_129 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_125 * vec4<f32>(x_126.x, x_126.x, x_126.x, x_126.x)) + x_129);
  let x_133 : vec4<f32> = x_36.unity_WorldToLight[2i];
  let x_134 : vec3<f32> = vs_TEXCOORD5;
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_133 * vec4<f32>(x_134.z, x_134.z, x_134.z, x_134.z)) + x_137);
  let x_139 : vec4<f32> = u_xlat4;
  let x_142 : vec4<f32> = x_36.unity_WorldToLight[3i];
  u_xlat4 = (x_139 + x_142);
  let x_145 : vec3<f32> = vs_TEXCOORD5;
  let x_149 : vec3<f32> = x_36.x_WorldSpaceCameraPos;
  let x_150 : vec3<f32> = (-(x_145) + x_149);
  let x_151 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_150.x, x_150.y, x_150.z, x_151.w);
  let x_157 : f32 = x_36.unity_MatrixV[0i].z;
  u_xlat6.x = x_157;
  let x_161 : f32 = x_36.unity_MatrixV[1i].z;
  u_xlat6.y = x_161;
  let x_165 : f32 = x_36.unity_MatrixV[2i].z;
  u_xlat6.z = x_165;
  let x_167 : vec4<f32> = u_xlat5;
  let x_169 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(vec3<f32>(x_167.x, x_167.y, x_167.z), vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec3<f32> = vs_TEXCOORD5;
  let x_175 : vec4<f32> = x_36.unity_ShadowFadeCenterAndType;
  let x_178 : vec3<f32> = (x_172 + -(vec3<f32>(x_175.x, x_175.y, x_175.z)));
  let x_179 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_182 : vec4<f32> = u_xlat5;
  let x_184 : vec4<f32> = u_xlat5;
  u_xlat34 = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : f32 = u_xlat34;
  u_xlat34 = sqrt(x_187);
  let x_189 : f32 = u_xlat33;
  let x_191 : f32 = u_xlat34;
  u_xlat34 = (-(x_189) + x_191);
  let x_195 : f32 = x_36.unity_ShadowFadeCenterAndType.w;
  let x_196 : f32 = u_xlat34;
  let x_198 : f32 = u_xlat33;
  u_xlat33 = ((x_195 * x_196) + x_198);
  let x_200 : f32 = u_xlat33;
  let x_202 : f32 = x_36.x_LightShadowData.z;
  let x_205 : f32 = x_36.x_LightShadowData.w;
  u_xlat33 = ((x_200 * x_202) + x_205);
  let x_207 : f32 = u_xlat33;
  u_xlat33 = clamp(x_207, 0.0f, 1.0f);
  let x_216 : f32 = x_36.unity_ProbeVolumeParams.x;
  u_xlatb34 = (x_216 == 1.0f);
  let x_218 : bool = u_xlatb34;
  if (x_218) {
    let x_222 : f32 = x_36.unity_ProbeVolumeParams.y;
    u_xlatb34 = (x_222 == 1.0f);
    let x_224 : vec3<f32> = vs_TEXCOORD5;
    let x_228 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[1i];
    let x_230 : vec3<f32> = (vec3<f32>(x_224.y, x_224.y, x_224.y) * vec3<f32>(x_228.x, x_228.y, x_228.z));
    let x_231 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
    let x_234 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[0i];
    let x_236 : vec3<f32> = vs_TEXCOORD5;
    let x_239 : vec4<f32> = u_xlat5;
    let x_241 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.x, x_236.x, x_236.x)) + vec3<f32>(x_239.x, x_239.y, x_239.z));
    let x_242 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
    let x_245 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[2i];
    let x_247 : vec3<f32> = vs_TEXCOORD5;
    let x_250 : vec4<f32> = u_xlat5;
    let x_252 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.z, x_247.z, x_247.z)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
    let x_253 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
    let x_255 : vec4<f32> = u_xlat5;
    let x_258 : vec4<f32> = x_36.unity_ProbeVolumeWorldToObject[3i];
    let x_260 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + vec3<f32>(x_258.x, x_258.y, x_258.z));
    let x_261 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
    let x_263 : bool = u_xlatb34;
    if (x_263) {
      let x_268 : vec4<f32> = u_xlat5;
      x_265 = vec3<f32>(x_268.x, x_268.y, x_268.z);
    } else {
      let x_271 : vec3<f32> = vs_TEXCOORD5;
      x_265 = x_271;
    }
    let x_272 : vec3<f32> = x_265;
    let x_273 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
    let x_275 : vec4<f32> = u_xlat5;
    let x_279 : vec3<f32> = x_36.unity_ProbeVolumeMin;
    let x_281 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) + -(x_279));
    let x_282 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat5;
    let x_288 : vec3<f32> = x_36.unity_ProbeVolumeSizeInv;
    let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) * x_288);
    let x_290 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_290.x, x_289.x, x_289.y, x_289.z);
    let x_293 : f32 = u_xlat5.y;
    u_xlat34 = ((x_293 * 0.25f) + 0.75f);
    let x_300 : f32 = x_36.unity_ProbeVolumeParams.z;
    u_xlat35 = ((x_300 * 0.5f) + 0.75f);
    let x_304 : f32 = u_xlat34;
    let x_305 : f32 = u_xlat35;
    u_xlat5.x = max(x_304, x_305);
    let x_316 : vec4<f32> = u_xlat5;
    let x_318 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_316.x, x_316.z, x_316.w));
    u_xlat5 = x_318;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_324 : vec4<f32> = u_xlat5;
  let x_326 : vec4<f32> = x_36.unity_OcclusionMaskSelector;
  u_xlat34 = dot(x_324, x_326);
  let x_328 : f32 = u_xlat34;
  u_xlat34 = clamp(x_328, 0.0f, 1.0f);
  let x_331 : f32 = u_xlat33;
  u_xlatb35 = (x_331 < 0.99000001f);
  let x_334 : bool = u_xlatb35;
  if (x_334) {
    let x_337 : vec3<f32> = vs_TEXCOORD5;
    let x_340 : vec4<f32> = x_36.unity_WorldToShadow[0i][1i];
    u_xlat5 = (vec4<f32>(x_337.y, x_337.y, x_337.y, x_337.y) * x_340);
    let x_343 : vec4<f32> = x_36.unity_WorldToShadow[0i][0i];
    let x_344 : vec3<f32> = vs_TEXCOORD5;
    let x_347 : vec4<f32> = u_xlat5;
    u_xlat5 = ((x_343 * vec4<f32>(x_344.x, x_344.x, x_344.x, x_344.x)) + x_347);
    let x_350 : vec4<f32> = x_36.unity_WorldToShadow[0i][2i];
    let x_351 : vec3<f32> = vs_TEXCOORD5;
    let x_354 : vec4<f32> = u_xlat5;
    u_xlat5 = ((x_350 * vec4<f32>(x_351.z, x_351.z, x_351.z, x_351.z)) + x_354);
    let x_356 : vec4<f32> = u_xlat5;
    let x_358 : vec4<f32> = x_36.unity_WorldToShadow[0i][3i];
    u_xlat5 = (x_356 + x_358);
    let x_360 : vec4<f32> = u_xlat5;
    let x_362 : vec4<f32> = u_xlat5;
    let x_364 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) / vec3<f32>(x_362.w, x_362.w, x_362.w));
    let x_365 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
    let x_367 : vec4<f32> = u_xlat5;
    let x_371 : vec4<f32> = x_36.x_ShadowMapTexture_TexelSize;
    let x_375 : vec2<f32> = ((vec2<f32>(x_367.x, x_367.y) * vec2<f32>(x_371.z, x_371.w)) + vec2<f32>(0.5f, 0.5f));
    let x_376 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_375.x, x_375.y, x_376.z, x_376.w);
    let x_378 : vec4<f32> = u_xlat6;
    let x_380 : vec2<f32> = floor(vec2<f32>(x_378.x, x_378.y));
    let x_381 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_380.x, x_380.y, x_381.z, x_381.w);
    let x_383 : vec4<f32> = u_xlat5;
    let x_386 : vec4<f32> = x_36.x_ShadowMapTexture_TexelSize;
    let x_389 : vec4<f32> = u_xlat6;
    let x_392 : vec2<f32> = ((vec2<f32>(x_383.x, x_383.y) * vec2<f32>(x_386.z, x_386.w)) + -(vec2<f32>(x_389.x, x_389.y)));
    let x_393 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
    let x_396 : vec4<f32> = u_xlat5;
    u_xlat7 = (vec4<f32>(x_396.x, x_396.x, x_396.y, x_396.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
    let x_401 : vec4<f32> = u_xlat7;
    let x_403 : vec4<f32> = u_xlat7;
    let x_405 : vec2<f32> = (vec2<f32>(x_401.x, x_401.z) * vec2<f32>(x_403.x, x_403.z));
    let x_406 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_405.x, x_406.y, x_406.z, x_405.y);
    let x_410 : vec4<f32> = u_xlat8;
    let x_413 : vec4<f32> = u_xlat5;
    u_xlat28 = ((vec2<f32>(x_410.x, x_410.w) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_413.x, x_413.y)));
    let x_417 : vec4<f32> = u_xlat5;
    let x_421 : vec2<f32> = (-(vec2<f32>(x_417.x, x_417.y)) + vec2<f32>(1.0f, 1.0f));
    let x_422 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_421.x, x_422.y, x_421.y, x_422.w);
    let x_425 : vec4<f32> = u_xlat5;
    let x_428 : vec2<f32> = min(vec2<f32>(x_425.x, x_425.y), vec2<f32>(0.0f, 0.0f));
    let x_429 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
    let x_431 : vec4<f32> = u_xlat9;
    let x_434 : vec4<f32> = u_xlat9;
    let x_437 : vec4<f32> = u_xlat7;
    let x_439 : vec2<f32> = ((-(vec2<f32>(x_431.x, x_431.y)) * vec2<f32>(x_434.x, x_434.y)) + vec2<f32>(x_437.x, x_437.z));
    let x_440 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_439.x, x_440.y, x_439.y, x_440.w);
    let x_442 : vec4<f32> = u_xlat5;
    let x_444 : vec2<f32> = max(vec2<f32>(x_442.x, x_442.y), vec2<f32>(0.0f, 0.0f));
    let x_445 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_444.x, x_444.y, x_445.z, x_445.w);
    let x_447 : vec4<f32> = u_xlat5;
    let x_450 : vec4<f32> = u_xlat5;
    let x_453 : vec4<f32> = u_xlat7;
    let x_455 : vec2<f32> = ((-(vec2<f32>(x_447.x, x_447.y)) * vec2<f32>(x_450.x, x_450.y)) + vec2<f32>(x_453.y, x_453.w));
    let x_456 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_455.x, x_455.y, x_456.z, x_456.w);
    let x_459 : f32 = u_xlat28.x;
    u_xlat9.x = x_459;
    let x_462 : f32 = u_xlat7.x;
    u_xlat9.y = x_462;
    let x_465 : f32 = u_xlat5.x;
    u_xlat9.z = x_465;
    let x_468 : f32 = u_xlat8.x;
    u_xlat9.w = x_468;
    let x_470 : vec4<f32> = u_xlat9;
    u_xlat9 = (x_470 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_476 : f32 = u_xlat28.y;
    u_xlat8.x = x_476;
    let x_479 : f32 = u_xlat7.z;
    u_xlat8.y = x_479;
    let x_482 : f32 = u_xlat5.y;
    u_xlat8.z = x_482;
    let x_484 : vec4<f32> = u_xlat8;
    u_xlat7 = (x_484 * vec4<f32>(0.444440007f, 0.444440007f, 0.444440007f, 0.222220004f));
    let x_486 : vec4<f32> = u_xlat9;
    let x_488 : vec4<f32> = u_xlat9;
    u_xlat8 = (vec4<f32>(x_486.y, x_486.w, x_486.y, x_486.w) + vec4<f32>(x_488.x, x_488.z, x_488.x, x_488.z));
    let x_492 : vec4<f32> = u_xlat7;
    let x_494 : vec4<f32> = u_xlat7;
    u_xlat10 = (vec4<f32>(x_492.y, x_492.y, x_492.w, x_492.w) + vec4<f32>(x_494.x, x_494.x, x_494.z, x_494.z));
    let x_497 : vec4<f32> = u_xlat9;
    let x_499 : vec4<f32> = u_xlat8;
    let x_501 : vec2<f32> = (vec2<f32>(x_497.y, x_497.w) / vec2<f32>(x_499.z, x_499.w));
    let x_502 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
    let x_504 : vec4<f32> = u_xlat5;
    let x_508 : vec2<f32> = (vec2<f32>(x_504.x, x_504.y) + vec2<f32>(-1.5f, 0.5f));
    let x_509 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_508.x, x_508.y, x_509.z, x_509.w);
    let x_511 : vec4<f32> = u_xlat7;
    let x_513 : vec4<f32> = u_xlat10;
    u_xlat28 = (vec2<f32>(x_511.y, x_511.w) / vec2<f32>(x_513.y, x_513.w));
    let x_516 : vec2<f32> = u_xlat28;
    u_xlat28 = (x_516 + vec2<f32>(-1.5f, 0.5f));
    let x_518 : vec4<f32> = u_xlat5;
    let x_521 : vec4<f32> = x_36.x_ShadowMapTexture_TexelSize;
    let x_523 : vec2<f32> = (vec2<f32>(x_518.x, x_518.y) * vec2<f32>(x_521.x, x_521.x));
    let x_524 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_523.x, x_523.y, x_524.z, x_524.w);
    let x_526 : vec2<f32> = u_xlat28;
    let x_528 : vec4<f32> = x_36.x_ShadowMapTexture_TexelSize;
    let x_530 : vec2<f32> = (x_526 * vec2<f32>(x_528.y, x_528.y));
    let x_531 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_530.x, x_530.y);
    let x_533 : vec4<f32> = u_xlat8;
    let x_534 : vec4<f32> = u_xlat10;
    u_xlat8 = (x_533 * x_534);
    let x_536 : vec4<f32> = u_xlat6;
    let x_539 : vec4<f32> = x_36.x_ShadowMapTexture_TexelSize;
    let x_542 : vec4<f32> = u_xlat7;
    u_xlat9 = ((vec4<f32>(x_536.x, x_536.y, x_536.x, x_536.y) * vec4<f32>(x_539.x, x_539.y, x_539.x, x_539.y)) + vec4<f32>(x_542.x, x_542.z, x_542.y, x_542.z));
    let x_546 : vec4<f32> = u_xlat9;
    let x_547 : vec2<f32> = vec2<f32>(x_546.x, x_546.y);
    let x_549 : f32 = u_xlat5.z;
    txVec0 = vec3<f32>(x_547.x, x_547.y, x_549);
    let x_561 : vec3<f32> = txVec0;
    let x_563 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_561.xy, x_561.z);
    u_xlat35 = x_563;
    let x_565 : vec4<f32> = u_xlat9;
    let x_566 : vec2<f32> = vec2<f32>(x_565.z, x_565.w);
    let x_568 : f32 = u_xlat5.z;
    txVec1 = vec3<f32>(x_566.x, x_566.y, x_568);
    let x_576 : vec3<f32> = txVec1;
    let x_578 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_576.xy, x_576.z);
    u_xlat36 = x_578;
    let x_579 : f32 = u_xlat36;
    let x_581 : f32 = u_xlat8.y;
    u_xlat36 = (x_579 * x_581);
    let x_584 : f32 = u_xlat8.x;
    let x_585 : f32 = u_xlat35;
    let x_587 : f32 = u_xlat36;
    u_xlat35 = ((x_584 * x_585) + x_587);
    let x_589 : vec4<f32> = u_xlat6;
    let x_592 : vec4<f32> = x_36.x_ShadowMapTexture_TexelSize;
    let x_595 : vec4<f32> = u_xlat7;
    u_xlat6 = ((vec4<f32>(x_589.x, x_589.y, x_589.x, x_589.y) * vec4<f32>(x_592.x, x_592.y, x_592.x, x_592.y)) + vec4<f32>(x_595.x, x_595.w, x_595.y, x_595.w));
    let x_599 : vec4<f32> = u_xlat6;
    let x_600 : vec2<f32> = vec2<f32>(x_599.x, x_599.y);
    let x_602 : f32 = u_xlat5.z;
    txVec2 = vec3<f32>(x_600.x, x_600.y, x_602);
    let x_609 : vec3<f32> = txVec2;
    let x_611 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_609.xy, x_609.z);
    u_xlat36 = x_611;
    let x_613 : f32 = u_xlat8.z;
    let x_614 : f32 = u_xlat36;
    let x_616 : f32 = u_xlat35;
    u_xlat35 = ((x_613 * x_614) + x_616);
    let x_619 : vec4<f32> = u_xlat6;
    let x_620 : vec2<f32> = vec2<f32>(x_619.z, x_619.w);
    let x_622 : f32 = u_xlat5.z;
    txVec3 = vec3<f32>(x_620.x, x_620.y, x_622);
    let x_629 : vec3<f32> = txVec3;
    let x_631 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_629.xy, x_629.z);
    u_xlat36 = x_631;
    let x_633 : f32 = u_xlat8.w;
    let x_634 : f32 = u_xlat36;
    let x_636 : f32 = u_xlat35;
    u_xlat35 = ((x_633 * x_634) + x_636);
    let x_639 : f32 = x_36.x_LightShadowData.x;
    u_xlat36 = (-(x_639) + 1.0f);
    let x_642 : f32 = u_xlat35;
    let x_643 : f32 = u_xlat36;
    let x_646 : f32 = x_36.x_LightShadowData.x;
    u_xlat35 = ((x_642 * x_643) + x_646);
  } else {
    u_xlat35 = 1.0f;
  }
  let x_649 : f32 = u_xlat34;
  let x_650 : f32 = u_xlat35;
  u_xlat34 = (x_649 + -(x_650));
  let x_653 : f32 = u_xlat33;
  let x_654 : f32 = u_xlat34;
  let x_656 : f32 = u_xlat35;
  u_xlat33 = ((x_653 * x_654) + x_656);
  let x_659 : f32 = u_xlat4.z;
  u_xlatb34 = (0.0f < x_659);
  let x_661 : bool = u_xlatb34;
  u_xlat34 = select(0.0f, 1.0f, x_661);
  let x_663 : vec4<f32> = u_xlat4;
  let x_665 : vec4<f32> = u_xlat4;
  let x_667 : vec2<f32> = (vec2<f32>(x_663.x, x_663.y) / vec2<f32>(x_665.w, x_665.w));
  let x_668 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat5;
  let x_672 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) + vec2<f32>(0.5f, 0.5f));
  let x_673 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
  let x_680 : vec4<f32> = u_xlat5;
  let x_682 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_680.x, x_680.y));
  u_xlat35 = x_682.w;
  let x_684 : f32 = u_xlat34;
  let x_685 : f32 = u_xlat35;
  u_xlat34 = (x_684 * x_685);
  let x_687 : vec4<f32> = u_xlat4;
  let x_689 : vec4<f32> = u_xlat4;
  u_xlat35 = dot(vec3<f32>(x_687.x, x_687.y, x_687.z), vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_697 : f32 = u_xlat35;
  let x_699 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_697, x_697));
  u_xlat35 = x_699.x;
  let x_701 : f32 = u_xlat34;
  let x_702 : f32 = u_xlat35;
  u_xlat34 = (x_701 * x_702);
  let x_704 : f32 = u_xlat33;
  let x_705 : f32 = u_xlat34;
  u_xlat33 = (x_704 * x_705);
  let x_710 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_710;
  let x_714 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_714;
  let x_717 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_717;
  let x_719 : vec4<f32> = u_xlat4;
  let x_721 : vec4<f32> = u_xlat4;
  u_xlat34 = dot(vec3<f32>(x_719.x, x_719.y, x_719.z), vec3<f32>(x_721.x, x_721.y, x_721.z));
  let x_724 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_724);
  let x_726 : f32 = u_xlat34;
  let x_728 : vec4<f32> = u_xlat4;
  let x_730 : vec3<f32> = (vec3<f32>(x_726, x_726, x_726) * vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_733 : f32 = u_xlat33;
  let x_737 : vec4<f32> = x_36.x_LightColor0;
  let x_739 : vec3<f32> = (vec3<f32>(x_733, x_733, x_733) * vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_744 : f32 = x_36.x_Glossiness;
  u_xlat33 = (-(x_744) + 1.0f);
  let x_747 : vec4<f32> = u_xlat4;
  let x_749 : f32 = u_xlat34;
  let x_752 : vec3<f32> = u_xlat3;
  let x_754 : vec3<f32> = ((vec3<f32>(x_747.x, x_747.y, x_747.z) * vec3<f32>(x_749, x_749, x_749)) + -(x_752));
  let x_755 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat4;
  let x_759 : vec4<f32> = u_xlat4;
  u_xlat34 = dot(vec3<f32>(x_757.x, x_757.y, x_757.z), vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : f32 = u_xlat34;
  u_xlat34 = max(x_762, 0.001f);
  let x_765 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_765);
  let x_767 : f32 = u_xlat34;
  let x_769 : vec4<f32> = u_xlat4;
  let x_771 : vec3<f32> = (vec3<f32>(x_767, x_767, x_767) * vec3<f32>(x_769.x, x_769.y, x_769.z));
  let x_772 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat2;
  let x_776 : vec3<f32> = u_xlat3;
  u_xlat34 = dot(vec3<f32>(x_774.x, x_774.y, x_774.z), -(x_776));
  let x_779 : vec4<f32> = u_xlat2;
  let x_781 : vec4<f32> = u_xlat5;
  u_xlat35 = dot(vec3<f32>(x_779.x, x_779.y, x_779.z), vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : f32 = u_xlat35;
  u_xlat35 = clamp(x_784, 0.0f, 1.0f);
  let x_786 : vec4<f32> = u_xlat2;
  let x_788 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_786.x, x_786.y, x_786.z), vec3<f32>(x_788.x, x_788.y, x_788.z));
  let x_793 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_793, 0.0f, 1.0f);
  let x_797 : vec4<f32> = u_xlat5;
  let x_799 : vec4<f32> = u_xlat4;
  u_xlat13 = dot(vec3<f32>(x_797.x, x_797.y, x_797.z), vec3<f32>(x_799.x, x_799.y, x_799.z));
  let x_802 : f32 = u_xlat13;
  u_xlat13 = clamp(x_802, 0.0f, 1.0f);
  let x_805 : f32 = u_xlat13;
  let x_806 : f32 = u_xlat13;
  u_xlat24 = (x_805 * x_806);
  let x_808 : f32 = u_xlat24;
  let x_810 : f32 = u_xlat33;
  u_xlat24 = dot(vec2<f32>(x_808, x_808), vec2<f32>(x_810, x_810));
  let x_813 : f32 = u_xlat24;
  u_xlat24 = (x_813 + -0.5f);
  let x_816 : f32 = u_xlat35;
  u_xlat3.x = (-(x_816) + 1.0f);
  let x_822 : f32 = u_xlat3.x;
  let x_824 : f32 = u_xlat3.x;
  u_xlat14 = (x_822 * x_824);
  let x_826 : f32 = u_xlat14;
  let x_827 : f32 = u_xlat14;
  u_xlat14 = (x_826 * x_827);
  let x_830 : f32 = u_xlat3.x;
  let x_831 : f32 = u_xlat14;
  u_xlat3.x = (x_830 * x_831);
  let x_834 : f32 = u_xlat24;
  let x_836 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_834 * x_836) + 1.0f);
  let x_840 : f32 = u_xlat34;
  u_xlat14 = (-(abs(x_840)) + 1.0f);
  let x_845 : f32 = u_xlat14;
  let x_846 : f32 = u_xlat14;
  u_xlat25 = (x_845 * x_846);
  let x_848 : f32 = u_xlat25;
  let x_849 : f32 = u_xlat25;
  u_xlat25 = (x_848 * x_849);
  let x_851 : f32 = u_xlat14;
  let x_852 : f32 = u_xlat25;
  u_xlat14 = (x_851 * x_852);
  let x_854 : f32 = u_xlat24;
  let x_855 : f32 = u_xlat14;
  u_xlat24 = ((x_854 * x_855) + 1.0f);
  let x_858 : f32 = u_xlat24;
  let x_860 : f32 = u_xlat3.x;
  u_xlat24 = (x_858 * x_860);
  let x_862 : f32 = u_xlat35;
  let x_863 : f32 = u_xlat24;
  u_xlat24 = (x_862 * x_863);
  let x_865 : f32 = u_xlat33;
  let x_866 : f32 = u_xlat33;
  u_xlat33 = (x_865 * x_866);
  let x_868 : f32 = u_xlat33;
  u_xlat33 = max(x_868, 0.002f);
  let x_871 : f32 = u_xlat33;
  u_xlat3.x = (-(x_871) + 1.0f);
  let x_875 : f32 = u_xlat34;
  let x_878 : f32 = u_xlat3.x;
  let x_880 : f32 = u_xlat33;
  u_xlat14 = ((abs(x_875) * x_878) + x_880);
  let x_882 : f32 = u_xlat35;
  let x_884 : f32 = u_xlat3.x;
  let x_886 : f32 = u_xlat33;
  u_xlat3.x = ((x_882 * x_884) + x_886);
  let x_889 : f32 = u_xlat34;
  let x_892 : f32 = u_xlat3.x;
  u_xlat34 = (abs(x_889) * x_892);
  let x_894 : f32 = u_xlat35;
  let x_895 : f32 = u_xlat14;
  let x_897 : f32 = u_xlat34;
  u_xlat34 = ((x_894 * x_895) + x_897);
  let x_899 : f32 = u_xlat34;
  u_xlat34 = (x_899 + 0.00001f);
  let x_902 : f32 = u_xlat34;
  u_xlat34 = (0.5f / x_902);
  let x_904 : f32 = u_xlat33;
  let x_905 : f32 = u_xlat33;
  u_xlat33 = (x_904 * x_905);
  let x_908 : f32 = u_xlat2.x;
  let x_909 : f32 = u_xlat33;
  let x_912 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_908 * x_909) + -(x_912));
  let x_917 : f32 = u_xlat3.x;
  let x_919 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_917 * x_919) + 1.0f);
  let x_923 : f32 = u_xlat33;
  u_xlat33 = (x_923 * 0.318309873f);
  let x_927 : f32 = u_xlat2.x;
  let x_929 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_927 * x_929) + 0.0000001f);
  let x_934 : f32 = u_xlat33;
  let x_936 : f32 = u_xlat2.x;
  u_xlat33 = (x_934 / x_936);
  let x_938 : f32 = u_xlat33;
  let x_939 : f32 = u_xlat34;
  u_xlat33 = (x_938 * x_939);
  let x_941 : f32 = u_xlat35;
  let x_942 : f32 = u_xlat33;
  u_xlat33 = (x_941 * x_942);
  let x_944 : f32 = u_xlat33;
  u_xlat33 = (x_944 * 3.141592741f);
  let x_947 : f32 = u_xlat33;
  u_xlat33 = max(x_947, 0.0f);
  let x_949 : vec3<f32> = u_xlat0;
  let x_950 : vec3<f32> = u_xlat0;
  u_xlat34 = dot(x_949, x_950);
  let x_952 : f32 = u_xlat34;
  u_xlatb34 = !((x_952 == 0.0f));
  let x_954 : bool = u_xlatb34;
  u_xlat34 = select(0.0f, 1.0f, x_954);
  let x_956 : f32 = u_xlat33;
  let x_957 : f32 = u_xlat34;
  u_xlat33 = (x_956 * x_957);
  let x_959 : f32 = u_xlat24;
  let x_961 : vec4<f32> = u_xlat6;
  let x_963 : vec3<f32> = (vec3<f32>(x_959, x_959, x_959) * vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_963.x, x_964.y, x_963.y, x_963.z);
  let x_966 : vec4<f32> = u_xlat6;
  let x_968 : f32 = u_xlat33;
  u_xlat3 = (vec3<f32>(x_966.x, x_966.y, x_966.z) * vec3<f32>(x_968, x_968, x_968));
  let x_971 : f32 = u_xlat13;
  u_xlat33 = (-(x_971) + 1.0f);
  let x_974 : f32 = u_xlat33;
  let x_975 : f32 = u_xlat33;
  u_xlat34 = (x_974 * x_975);
  let x_977 : f32 = u_xlat34;
  let x_978 : f32 = u_xlat34;
  u_xlat34 = (x_977 * x_978);
  let x_980 : f32 = u_xlat33;
  let x_981 : f32 = u_xlat34;
  u_xlat33 = (x_980 * x_981);
  let x_983 : vec3<f32> = u_xlat0;
  let x_986 : vec3<f32> = (-(x_983) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_987 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : vec4<f32> = u_xlat4;
  let x_991 : f32 = u_xlat33;
  let x_994 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991, x_991, x_991)) + x_994);
  let x_996 : vec3<f32> = u_xlat0;
  let x_997 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_996 * x_997);
  let x_1001 : vec3<f32> = u_xlat1;
  let x_1002 : vec4<f32> = u_xlat2;
  let x_1005 : vec3<f32> = u_xlat0;
  let x_1006 : vec3<f32> = ((x_1001 * vec3<f32>(x_1002.x, x_1002.z, x_1002.w)) + x_1005);
  let x_1007 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  SV_Target0.w = 1.0f;
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

