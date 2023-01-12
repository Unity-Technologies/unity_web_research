type Arr = array<mat4x4<f32>, 4u>;

struct PGlobals {
  unity_WorldToShadow : Arr,
  x_LightShadowData : vec4<f32>,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_21 : PGlobals;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

@group(0) @binding(4) var x_ShadowMapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler_comparison;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlatb1 : bool;
  var u_xlat3 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat6 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD5;
  let x_27 : vec4<f32> = x_21.unity_WorldToLight[1i];
  u_xlat0 = (vec4<f32>(x_13.y, x_13.y, x_13.y, x_13.y) * x_27);
  let x_31 : vec4<f32> = x_21.unity_WorldToLight[0i];
  let x_32 : vec3<f32> = vs_TEXCOORD5;
  let x_35 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_31 * vec4<f32>(x_32.x, x_32.x, x_32.x, x_32.x)) + x_35);
  let x_39 : vec4<f32> = x_21.unity_WorldToLight[2i];
  let x_40 : vec3<f32> = vs_TEXCOORD5;
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_39 * vec4<f32>(x_40.z, x_40.z, x_40.z, x_40.z)) + x_43);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_21.unity_WorldToLight[3i];
  u_xlat0 = (x_45 + x_48);
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec2<f32> = (vec2<f32>(x_52.x, x_52.y) / vec2<f32>(x_54.w, x_54.w));
  let x_57 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_56.x, x_56.y, x_57.z, x_57.w);
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec2<f32> = (vec2<f32>(x_59.x, x_59.y) + vec2<f32>(0.5f, 0.5f));
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_63.x, x_63.y, x_64.z, x_64.w);
  let x_78 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_78.x, x_78.y));
  u_xlat9 = x_80.w;
  let x_89 : f32 = u_xlat0.z;
  u_xlatb1 = (0.0f < x_89);
  let x_91 : vec4<f32> = u_xlat0;
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_91.x, x_91.y, x_91.z), vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_103 : vec4<f32> = u_xlat0;
  let x_105 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_103.x, x_103.x));
  u_xlat0.x = x_105.x;
  let x_110 : bool = u_xlatb1;
  u_xlat3.x = select(0.0f, 1.0f, x_110);
  let x_114 : f32 = u_xlat9;
  let x_116 : f32 = u_xlat3.x;
  u_xlat3.x = (x_114 * x_116);
  let x_120 : f32 = u_xlat0.x;
  let x_122 : f32 = u_xlat3.x;
  u_xlat0.x = (x_120 * x_122);
  let x_125 : vec3<f32> = vs_TEXCOORD5;
  let x_128 : vec4<f32> = x_21.unity_WorldToShadow[0i][1i];
  u_xlat1 = (vec4<f32>(x_125.y, x_125.y, x_125.y, x_125.y) * x_128);
  let x_131 : vec4<f32> = x_21.unity_WorldToShadow[0i][0i];
  let x_132 : vec3<f32> = vs_TEXCOORD5;
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_131 * vec4<f32>(x_132.x, x_132.x, x_132.x, x_132.x)) + x_135);
  let x_138 : vec4<f32> = x_21.unity_WorldToShadow[0i][2i];
  let x_139 : vec3<f32> = vs_TEXCOORD5;
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_138 * vec4<f32>(x_139.z, x_139.z, x_139.z, x_139.z)) + x_142);
  let x_144 : vec4<f32> = u_xlat1;
  let x_146 : vec4<f32> = x_21.unity_WorldToShadow[0i][3i];
  u_xlat1 = (x_144 + x_146);
  let x_148 : vec4<f32> = u_xlat1;
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec3<f32>(x_148.x, x_148.y, x_148.z) / vec3<f32>(x_150.w, x_150.w, x_150.w));
  let x_154 : vec3<f32> = u_xlat3;
  let x_155 : vec2<f32> = vec2<f32>(x_154.x, x_154.y);
  let x_157 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_155.x, x_155.y, x_157);
  let x_169 : vec3<f32> = txVec0;
  let x_171 : f32 = textureSampleCompareLevel(x_ShadowMapTexture, sampler_ShadowMapTexture, x_169.xy, x_169.z);
  u_xlat3.x = x_171;
  let x_176 : f32 = x_21.x_LightShadowData.x;
  u_xlat6 = (-(x_176) + 1.0f);
  let x_180 : f32 = u_xlat3.x;
  let x_181 : f32 = u_xlat6;
  let x_184 : f32 = x_21.x_LightShadowData.x;
  u_xlat3.x = ((x_180 * x_181) + x_184);
  let x_188 : f32 = u_xlat3.x;
  let x_190 : f32 = u_xlat0.x;
  u_xlat0.x = (x_188 * x_190);
  let x_193 : vec4<f32> = u_xlat0;
  let x_196 : vec4<f32> = x_21.x_LightColor0;
  let x_198 : vec3<f32> = (vec3<f32>(x_193.x, x_193.x, x_193.x) * vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_203 : vec4<f32> = vs_TEXCOORD4;
  let x_205 : vec4<f32> = vs_TEXCOORD4;
  u_xlat9 = dot(vec3<f32>(x_203.x, x_203.y, x_203.z), vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_208 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_208);
  let x_210 : f32 = u_xlat9;
  let x_212 : vec4<f32> = vs_TEXCOORD4;
  let x_214 : vec3<f32> = (vec3<f32>(x_210, x_210, x_210) * vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_215 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_221 : f32 = vs_TEXCOORD2.w;
  u_xlat2.x = x_221;
  let x_225 : f32 = vs_TEXCOORD3.w;
  u_xlat2.y = x_225;
  let x_229 : f32 = vs_TEXCOORD4.w;
  u_xlat2.z = x_229;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), x_233);
  let x_235 : f32 = u_xlat9;
  u_xlat9 = clamp(x_235, 0.0f, 1.0f);
  let x_237 : f32 = u_xlat9;
  let x_239 : vec4<f32> = u_xlat0;
  let x_241 : vec3<f32> = (vec3<f32>(x_237, x_237, x_237) * vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_245 : vec4<f32> = vs_TEXCOORD1;
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(-(vec3<f32>(x_245.x, x_245.y, x_245.z)), vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : f32 = u_xlat9;
  let x_252 : f32 = u_xlat9;
  u_xlat9 = (x_251 + x_252);
  let x_254 : vec4<f32> = u_xlat1;
  let x_256 : f32 = u_xlat9;
  let x_260 : vec4<f32> = vs_TEXCOORD1;
  let x_263 : vec3<f32> = ((vec3<f32>(x_254.x, x_254.y, x_254.z) * -(vec3<f32>(x_256, x_256, x_256))) + -(vec3<f32>(x_260.x, x_260.y, x_260.z)));
  let x_264 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat1;
  let x_268 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_266.x, x_266.y, x_266.z), x_268);
  let x_270 : f32 = u_xlat9;
  let x_271 : f32 = u_xlat9;
  u_xlat9 = (x_270 * x_271);
  let x_273 : f32 = u_xlat9;
  let x_274 : f32 = u_xlat9;
  u_xlat1.x = (x_273 * x_274);
  let x_279 : f32 = x_21.x_Glossiness;
  u_xlat1.y = (-(x_279) + 1.0f);
  let x_288 : vec4<f32> = u_xlat1;
  let x_290 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_288.x, x_288.y));
  u_xlat9 = x_290.x;
  let x_292 : f32 = u_xlat9;
  u_xlat9 = (x_292 * 16.0f);
  let x_301 : vec4<f32> = vs_TEXCOORD0;
  let x_303 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_301.x, x_301.y));
  let x_304 : vec3<f32> = vec3<f32>(x_303.x, x_303.y, x_303.z);
  let x_305 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_308 : vec4<f32> = x_21.x_Color;
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat2 = ((vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(x_310.x, x_310.y, x_310.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_316 : vec4<f32> = u_xlat1;
  let x_319 : vec4<f32> = x_21.x_Color;
  let x_321 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_322 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_326 : f32 = x_21.x_Metallic;
  let x_328 : f32 = x_21.x_Metallic;
  let x_330 : f32 = x_21.x_Metallic;
  let x_331 : vec3<f32> = vec3<f32>(x_326, x_328, x_330);
  let x_336 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_331.x, x_331.y, x_331.z) * x_336) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_341 : f32 = u_xlat9;
  let x_343 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_341, x_341, x_341) * x_343);
  let x_346 : f32 = x_21.x_Metallic;
  u_xlat9 = ((-(x_346) * 0.959999979f) + 0.959999979f);
  let x_351 : vec4<f32> = u_xlat1;
  let x_353 : f32 = u_xlat9;
  let x_356 : vec3<f32> = u_xlat2;
  let x_357 : vec3<f32> = ((vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353, x_353, x_353)) + x_356);
  let x_358 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_362 : vec4<f32> = u_xlat0;
  let x_364 : vec4<f32> = u_xlat1;
  let x_366 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) * vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD5_param : vec3<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

