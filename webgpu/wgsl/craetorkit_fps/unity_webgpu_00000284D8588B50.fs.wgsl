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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat19 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb19 : bool;
  var u_xlat4 : vec4<f32>;
  var x_178 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlatb20 : bool;
  var u_xlat21 : f32;
  var u_xlat5 : vec3<f32>;
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
      let x_181 : vec4<f32> = u_xlat4;
      x_178 = vec3<f32>(x_181.x, x_181.y, x_181.z);
    } else {
      let x_184 : vec3<f32> = vs_TEXCOORD5;
      x_178 = x_184;
    }
    let x_185 : vec3<f32> = x_178;
    let x_186 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
    let x_188 : vec4<f32> = u_xlat4;
    let x_193 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_195 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) + -(x_193));
    let x_196 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
    let x_198 : vec4<f32> = u_xlat4;
    let x_201 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_202 : vec3<f32> = (vec3<f32>(x_198.x, x_198.y, x_198.z) * x_201);
    let x_203 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_203.x, x_202.x, x_202.y, x_202.z);
    let x_206 : f32 = u_xlat4.y;
    u_xlat19 = ((x_206 * 0.25f) + 0.75f);
    let x_214 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_214 * 0.5f) + 0.75f);
    let x_218 : f32 = u_xlat19;
    let x_219 : f32 = u_xlat20;
    u_xlat4.x = max(x_218, x_219);
    let x_230 : vec4<f32> = u_xlat4;
    let x_232 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_230.x, x_230.z, x_230.w));
    u_xlat4 = x_232;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_239 : vec4<f32> = u_xlat4;
  let x_241 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_239, x_241);
  let x_243 : f32 = u_xlat19;
  u_xlat19 = clamp(x_243, 0.0f, 1.0f);
  let x_248 : f32 = u_xlat3.z;
  u_xlatb20 = (0.0f < x_248);
  let x_250 : bool = u_xlatb20;
  u_xlat20 = select(0.0f, 1.0f, x_250);
  let x_252 : vec4<f32> = u_xlat3;
  let x_254 : vec4<f32> = u_xlat3;
  let x_256 : vec2<f32> = (vec2<f32>(x_252.x, x_252.y) / vec2<f32>(x_254.w, x_254.w));
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_256.y, x_257.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat4;
  let x_262 : vec2<f32> = (vec2<f32>(x_259.x, x_259.y) + vec2<f32>(0.5f, 0.5f));
  let x_263 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
  let x_271 : vec4<f32> = u_xlat4;
  let x_273 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_271.x, x_271.y));
  u_xlat21 = x_273.w;
  let x_275 : f32 = u_xlat20;
  let x_276 : f32 = u_xlat21;
  u_xlat20 = (x_275 * x_276);
  let x_278 : vec4<f32> = u_xlat3;
  let x_280 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_289 : vec4<f32> = u_xlat3;
  let x_291 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_289.x, x_289.x));
  u_xlat3.x = x_291.x;
  let x_294 : f32 = u_xlat20;
  let x_296 : f32 = u_xlat3.x;
  u_xlat20 = (x_294 * x_296);
  let x_298 : f32 = u_xlat19;
  let x_299 : f32 = u_xlat20;
  u_xlat19 = (x_298 * x_299);
  let x_301 : f32 = u_xlat19;
  let x_305 : vec4<f32> = x_33.x_LightColor0;
  let x_307 : vec3<f32> = (vec3<f32>(x_301, x_301, x_301) * vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_311 : vec4<f32> = vs_TEXCOORD1;
  let x_314 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_311.x, x_311.y, x_311.z)), x_314);
  let x_316 : f32 = u_xlat19;
  let x_317 : f32 = u_xlat19;
  u_xlat19 = (x_316 + x_317);
  let x_319 : vec3<f32> = u_xlat2;
  let x_320 : f32 = u_xlat19;
  let x_324 : vec4<f32> = vs_TEXCOORD1;
  let x_327 : vec3<f32> = ((x_319 * -(vec3<f32>(x_320, x_320, x_320))) + -(vec3<f32>(x_324.x, x_324.y, x_324.z)));
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_334 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_334;
  let x_338 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_338;
  let x_341 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_341;
  let x_343 : vec3<f32> = u_xlat2;
  let x_344 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_343, x_344);
  let x_346 : f32 = u_xlat19;
  u_xlat19 = clamp(x_346, 0.0f, 1.0f);
  let x_348 : vec4<f32> = u_xlat4;
  let x_350 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_348.x, x_348.y, x_348.z), x_350);
  let x_354 : f32 = u_xlat2.x;
  let x_356 : f32 = u_xlat2.x;
  u_xlat2.x = (x_354 * x_356);
  let x_360 : f32 = u_xlat2.x;
  let x_362 : f32 = u_xlat2.x;
  u_xlat2.x = (x_360 * x_362);
  let x_367 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_367) + 1.0f);
  let x_376 : vec3<f32> = u_xlat2;
  let x_378 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_376.x, x_376.y));
  u_xlat2.x = x_378.x;
  let x_382 : f32 = u_xlat2.x;
  u_xlat2.x = (x_382 * 16.0f);
  let x_386 : vec3<f32> = u_xlat0;
  let x_387 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_386 * vec3<f32>(x_387.x, x_387.x, x_387.x));
  let x_390 : vec3<f32> = u_xlat1;
  let x_391 : f32 = u_xlat18;
  let x_394 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_390 * vec3<f32>(x_391, x_391, x_391)) + x_394);
  let x_396 : f32 = u_xlat19;
  let x_398 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_396, x_396, x_396) * vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_403 : vec3<f32> = u_xlat0;
  let x_404 : vec3<f32> = u_xlat1;
  let x_405 : vec3<f32> = (x_403 * x_404);
  let x_406 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
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

