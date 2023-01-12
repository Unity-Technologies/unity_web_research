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

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat19 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb19 : bool;
  var u_xlat4 : vec4<f32>;
  var x_182 : vec3<f32>;
  var u_xlat20 : f32;
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
  let x_93 : vec3<f32> = vs_TEXCOORD5;
  let x_98 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_93.y, x_93.y, x_93.y) * vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_103 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_105 : vec3<f32> = vs_TEXCOORD5;
  let x_108 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_103.x, x_103.y, x_103.z) * vec3<f32>(x_105.x, x_105.x, x_105.x)) + x_108);
  let x_112 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_114 : vec3<f32> = vs_TEXCOORD5;
  let x_117 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_112.x, x_112.y, x_112.z) * vec3<f32>(x_114.z, x_114.z, x_114.z)) + x_117);
  let x_119 : vec3<f32> = u_xlat3;
  let x_122 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat3 = (x_119 + vec3<f32>(x_122.x, x_122.y, x_122.z));
  let x_131 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb19 = (x_131 == 1.0f);
  let x_134 : bool = u_xlatb19;
  if (x_134) {
    let x_139 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb19 = (x_139 == 1.0f);
    let x_143 : vec3<f32> = vs_TEXCOORD5;
    let x_146 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_148 : vec3<f32> = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_146.x, x_146.y, x_146.z));
    let x_149 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
    let x_152 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_154 : vec3<f32> = vs_TEXCOORD5;
    let x_157 : vec4<f32> = u_xlat4;
    let x_159 : vec3<f32> = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_154.x, x_154.x, x_154.x)) + vec3<f32>(x_157.x, x_157.y, x_157.z));
    let x_160 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
    let x_163 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_165 : vec3<f32> = vs_TEXCOORD5;
    let x_168 : vec4<f32> = u_xlat4;
    let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.z, x_165.z, x_165.z)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
    let x_171 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_173 : vec4<f32> = u_xlat4;
    let x_176 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_178 : vec3<f32> = (vec3<f32>(x_173.x, x_173.y, x_173.z) + vec3<f32>(x_176.x, x_176.y, x_176.z));
    let x_179 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
    let x_181 : bool = u_xlatb19;
    if (x_181) {
      let x_185 : vec4<f32> = u_xlat4;
      x_182 = vec3<f32>(x_185.x, x_185.y, x_185.z);
    } else {
      let x_188 : vec3<f32> = vs_TEXCOORD5;
      x_182 = x_188;
    }
    let x_189 : vec3<f32> = x_182;
    let x_190 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_192 : vec4<f32> = u_xlat4;
    let x_197 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_199 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) + -(x_197));
    let x_200 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
    let x_202 : vec4<f32> = u_xlat4;
    let x_205 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_206 : vec3<f32> = (vec3<f32>(x_202.x, x_202.y, x_202.z) * x_205);
    let x_207 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_207.x, x_206.x, x_206.y, x_206.z);
    let x_210 : f32 = u_xlat4.y;
    u_xlat19 = ((x_210 * 0.25f) + 0.75f);
    let x_218 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_218 * 0.5f) + 0.75f);
    let x_222 : f32 = u_xlat19;
    let x_223 : f32 = u_xlat20;
    u_xlat4.x = max(x_222, x_223);
    let x_234 : vec4<f32> = u_xlat4;
    let x_236 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_234.x, x_234.z, x_234.w));
    u_xlat4 = x_236;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_243 : vec4<f32> = u_xlat4;
  let x_245 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat19 = dot(x_243, x_245);
  let x_247 : f32 = u_xlat19;
  u_xlat19 = clamp(x_247, 0.0f, 1.0f);
  let x_250 : vec3<f32> = u_xlat3;
  let x_251 : vec3<f32> = u_xlat3;
  u_xlat20 = dot(x_250, x_251);
  let x_258 : f32 = u_xlat20;
  let x_260 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_258, x_258));
  u_xlat20 = x_260.x;
  let x_262 : f32 = u_xlat19;
  let x_263 : f32 = u_xlat20;
  u_xlat19 = (x_262 * x_263);
  let x_265 : f32 = u_xlat19;
  let x_269 : vec4<f32> = x_33.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_265, x_265, x_265) * vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_273 : vec4<f32> = vs_TEXCOORD1;
  let x_276 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(-(vec3<f32>(x_273.x, x_273.y, x_273.z)), x_276);
  let x_278 : f32 = u_xlat19;
  let x_279 : f32 = u_xlat19;
  u_xlat19 = (x_278 + x_279);
  let x_281 : vec3<f32> = u_xlat2;
  let x_282 : f32 = u_xlat19;
  let x_286 : vec4<f32> = vs_TEXCOORD1;
  let x_289 : vec3<f32> = ((x_281 * -(vec3<f32>(x_282, x_282, x_282))) + -(vec3<f32>(x_286.x, x_286.y, x_286.z)));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_296 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_296;
  let x_300 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_300;
  let x_303 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_303;
  let x_305 : vec3<f32> = u_xlat2;
  let x_306 : vec3<f32> = u_xlat5;
  u_xlat19 = dot(x_305, x_306);
  let x_308 : f32 = u_xlat19;
  u_xlat19 = clamp(x_308, 0.0f, 1.0f);
  let x_310 : vec4<f32> = u_xlat4;
  let x_312 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_310.x, x_310.y, x_310.z), x_312);
  let x_316 : f32 = u_xlat2.x;
  let x_318 : f32 = u_xlat2.x;
  u_xlat2.x = (x_316 * x_318);
  let x_322 : f32 = u_xlat2.x;
  let x_324 : f32 = u_xlat2.x;
  u_xlat2.x = (x_322 * x_324);
  let x_329 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_329) + 1.0f);
  let x_338 : vec3<f32> = u_xlat2;
  let x_340 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_338.x, x_338.y));
  u_xlat2.x = x_340.x;
  let x_344 : f32 = u_xlat2.x;
  u_xlat2.x = (x_344 * 16.0f);
  let x_348 : vec3<f32> = u_xlat0;
  let x_349 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_348 * vec3<f32>(x_349.x, x_349.x, x_349.x));
  let x_352 : vec3<f32> = u_xlat1;
  let x_353 : f32 = u_xlat18;
  let x_356 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_352 * vec3<f32>(x_353, x_353, x_353)) + x_356);
  let x_358 : f32 = u_xlat19;
  let x_360 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_358, x_358, x_358) * x_360);
  let x_362 : vec3<f32> = u_xlat0;
  let x_363 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_362 * x_363);
  let x_366 : f32 = vs_TEXCOORD1.w;
  u_xlat18 = x_366;
  let x_367 : f32 = u_xlat18;
  u_xlat18 = clamp(x_367, 0.0f, 1.0f);
  let x_371 : vec3<f32> = u_xlat0;
  let x_372 : f32 = u_xlat18;
  let x_374 : vec3<f32> = (x_371 * vec3<f32>(x_372, x_372, x_372));
  let x_375 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_374.x, x_374.y, x_374.z, x_375.w);
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

