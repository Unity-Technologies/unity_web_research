struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_33 : PGlobals;

var<private> u_xlat18 : f32;

var<private> u_xlat19 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlatb19 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat20 : f32;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb20 : bool;

var<private> u_xlat21 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(10) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(4) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_179 : vec3<f32>;
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
  u_xlat18 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_77 : vec4<f32> = vs_TEXCOORD4;
  let x_79 : vec4<f32> = vs_TEXCOORD4;
  u_xlat19 = dot(vec3<f32>(x_77.x, x_77.y, x_77.z), vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_82);
  let x_85 : f32 = u_xlat19;
  let x_87 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_85, x_85, x_85) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_94 : vec3<f32> = vs_TEXCOORD5;
  let x_99 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat3 = (vec4<f32>(x_94.y, x_94.y, x_94.y, x_94.y) * x_99);
  let x_103 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_104 : vec3<f32> = vs_TEXCOORD5;
  let x_107 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_103 * vec4<f32>(x_104.x, x_104.x, x_104.x, x_104.x)) + x_107);
  let x_111 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_112 : vec3<f32> = vs_TEXCOORD5;
  let x_115 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_111 * vec4<f32>(x_112.z, x_112.z, x_112.z, x_112.z)) + x_115);
  let x_117 : vec4<f32> = u_xlat3;
  let x_120 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat3 = (x_117 + x_120);
  let x_128 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_128 == 1.0f);
  let x_131 : bool = u_xlatb19;
  if (x_131) {
    let x_136 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_136 == 1.0f);
    let x_139 : vec3<f32> = vs_TEXCOORD5;
    let x_142 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_144 : vec3<f32> = (vec3<f32>(x_139.y, x_139.y, x_139.y) * vec3<f32>(x_142.x, x_142.y, x_142.z));
    let x_145 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
    let x_148 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_150 : vec3<f32> = vs_TEXCOORD5;
    let x_153 : vec4<f32> = u_xlat4;
    let x_155 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150.x, x_150.x, x_150.x)) + vec3<f32>(x_153.x, x_153.y, x_153.z));
    let x_156 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_155.x, x_155.y, x_155.z, x_156.w);
    let x_159 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_161 : vec3<f32> = vs_TEXCOORD5;
    let x_164 : vec4<f32> = u_xlat4;
    let x_166 : vec3<f32> = ((vec3<f32>(x_159.x, x_159.y, x_159.z) * vec3<f32>(x_161.z, x_161.z, x_161.z)) + vec3<f32>(x_164.x, x_164.y, x_164.z));
    let x_167 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
    let x_169 : vec4<f32> = u_xlat4;
    let x_172 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_174 : vec3<f32> = (vec3<f32>(x_169.x, x_169.y, x_169.z) + vec3<f32>(x_172.x, x_172.y, x_172.z));
    let x_175 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
    let x_177 : bool = u_xlatb19;
    if (x_177) {
      let x_182 : vec4<f32> = u_xlat4;
      x_179 = vec3<f32>(x_182.x, x_182.y, x_182.z);
    } else {
      let x_185 : vec3<f32> = vs_TEXCOORD5;
      x_179 = x_185;
    }
    let x_186 : vec3<f32> = x_179;
    let x_187 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
    let x_189 : vec4<f32> = u_xlat4;
    let x_194 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_196 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) + -(x_194));
    let x_197 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : vec4<f32> = u_xlat4;
    let x_202 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_203 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) * x_202);
    let x_204 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_204.x, x_203.x, x_203.y, x_203.z);
    let x_207 : f32 = u_xlat4.y;
    u_xlat19 = ((x_207 * 0.25f) + 0.75f);
    let x_215 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_215 * 0.5f) + 0.75f);
    let x_219 : f32 = u_xlat19;
    let x_220 : f32 = u_xlat20;
    u_xlat4.x = max(x_219, x_220);
    let x_231 : vec4<f32> = u_xlat4;
    let x_233 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_231.x, x_231.z, x_231.w));
    u_xlat4 = x_233;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_240 : vec4<f32> = u_xlat4;
  let x_242 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_240, x_242);
  let x_244 : f32 = u_xlat19;
  u_xlat19 = clamp(x_244, 0.0f, 1.0f);
  let x_249 : f32 = u_xlat3.z;
  u_xlatb20 = (0.0f < x_249);
  let x_251 : bool = u_xlatb20;
  u_xlat20 = select(0.0f, 1.0f, x_251);
  let x_253 : vec4<f32> = u_xlat3;
  let x_255 : vec4<f32> = u_xlat3;
  let x_257 : vec2<f32> = (vec2<f32>(x_253.x, x_253.y) / vec2<f32>(x_255.w, x_255.w));
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_257.x, x_257.y, x_258.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat4;
  let x_263 : vec2<f32> = (vec2<f32>(x_260.x, x_260.y) + vec2<f32>(0.5f, 0.5f));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_264.z, x_264.w);
  let x_272 : vec4<f32> = u_xlat4;
  let x_274 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_272.x, x_272.y));
  u_xlat21 = x_274.w;
  let x_276 : f32 = u_xlat20;
  let x_277 : f32 = u_xlat21;
  u_xlat20 = (x_276 * x_277);
  let x_279 : vec4<f32> = u_xlat3;
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_279.x, x_279.y, x_279.z), vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_290 : vec4<f32> = u_xlat3;
  let x_292 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_290.x, x_290.x));
  u_xlat3.x = x_292.x;
  let x_295 : f32 = u_xlat20;
  let x_297 : f32 = u_xlat3.x;
  u_xlat20 = (x_295 * x_297);
  let x_299 : f32 = u_xlat19;
  let x_300 : f32 = u_xlat20;
  u_xlat19 = (x_299 * x_300);
  let x_302 : f32 = u_xlat19;
  let x_306 : vec4<f32> = x_33.x_LightColor0;
  let x_308 : vec3<f32> = (vec3<f32>(x_302, x_302, x_302) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_312 : vec4<f32> = vs_TEXCOORD1;
  let x_315 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_312.x, x_312.y, x_312.z)), x_315);
  let x_317 : f32 = u_xlat19;
  let x_318 : f32 = u_xlat19;
  u_xlat19 = (x_317 + x_318);
  let x_320 : vec3<f32> = u_xlat2;
  let x_321 : f32 = u_xlat19;
  let x_325 : vec4<f32> = vs_TEXCOORD1;
  let x_328 : vec3<f32> = ((x_320 * -(vec3<f32>(x_321, x_321, x_321))) + -(vec3<f32>(x_325.x, x_325.y, x_325.z)));
  let x_329 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_335 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_335;
  let x_339 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_339;
  let x_342 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_342;
  let x_344 : vec3<f32> = u_xlat2;
  let x_345 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_344, x_345);
  let x_347 : f32 = u_xlat19;
  u_xlat19 = clamp(x_347, 0.0f, 1.0f);
  let x_349 : vec4<f32> = u_xlat4;
  let x_351 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_349.x, x_349.y, x_349.z), x_351);
  let x_355 : f32 = u_xlat2.x;
  let x_357 : f32 = u_xlat2.x;
  u_xlat2.x = (x_355 * x_357);
  let x_361 : f32 = u_xlat2.x;
  let x_363 : f32 = u_xlat2.x;
  u_xlat2.x = (x_361 * x_363);
  let x_368 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_368) + 1.0f);
  let x_377 : vec3<f32> = u_xlat2;
  let x_379 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_377.x, x_377.y));
  u_xlat2.x = x_379.x;
  let x_383 : f32 = u_xlat2.x;
  u_xlat2.x = (x_383 * 16.0f);
  let x_387 : vec3<f32> = u_xlat0;
  let x_388 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_387 * vec3<f32>(x_388.x, x_388.x, x_388.x));
  let x_391 : vec3<f32> = u_xlat1;
  let x_392 : f32 = u_xlat18;
  let x_395 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_391 * vec3<f32>(x_392, x_392, x_392)) + x_395);
  let x_397 : f32 = u_xlat19;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_397, x_397, x_397) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_404 : vec3<f32> = u_xlat0;
  let x_405 : vec3<f32> = u_xlat1;
  let x_406 : vec3<f32> = (x_404 * x_405);
  let x_407 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

