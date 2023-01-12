struct PGlobals {
  unity_FogColor : vec4<f32>,
  x_Color : vec4<f32>,
  x_CameraFadeParams : vec4<f32>,
  x_DstBlend : i32,
  x_DistortionStrengthScaled : f32,
  x_DistortionBlend : f32,
}

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_84 : PGlobals;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(2) var x_GrabTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_GrabTexture : sampler;

var<private> vs_TEXCOORD0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat4 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat7 : f32;
  var u_xlatb6 : bool;
  var x_248 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_23);
  let x_26 : vec3<f32> = vec3<f32>(x_24.x, x_24.y, x_24.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_26.z, x_27.w);
  let x_33 : f32 = u_xlat0.z;
  let x_36 : f32 = u_xlat0.x;
  u_xlat0.x = (x_33 * x_36);
  let x_39 : vec4<f32> = u_xlat0;
  let x_46 : vec2<f32> = ((vec2<f32>(x_39.x, x_39.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_46.x, x_46.y, x_47.z, x_47.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec2<f32>(x_50.x, x_50.y), vec2<f32>(x_52.x, x_52.y));
  let x_55 : f32 = u_xlat6;
  u_xlat6 = min(x_55, 1.0f);
  let x_58 : f32 = u_xlat6;
  u_xlat6 = (-(x_58) + 1.0f);
  let x_61 : f32 = u_xlat6;
  u_xlat0.z = sqrt(x_61);
  let x_65 : vec4<f32> = u_xlat0;
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat4 = dot(vec3<f32>(x_65.x, x_65.y, x_65.z), vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : f32 = u_xlat4;
  u_xlat4 = inverseSqrt(x_70);
  let x_72 : f32 = u_xlat4;
  let x_74 : vec4<f32> = u_xlat0;
  let x_76 : vec2<f32> = (vec2<f32>(x_72, x_72) * vec2<f32>(x_74.x, x_74.y));
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_76.x, x_76.y, x_77.z, x_77.w);
  let x_79 : vec4<f32> = u_xlat0;
  let x_88 : f32 = x_84.x_DistortionStrengthScaled;
  let x_90 : f32 = x_84.x_DistortionStrengthScaled;
  let x_91 : vec2<f32> = vec2<f32>(x_88, x_90);
  let x_95 : vec2<f32> = (vec2<f32>(x_79.x, x_79.y) * vec2<f32>(x_91.x, x_91.y));
  let x_96 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_102 : f32 = vs_TEXCOORD3.z;
  let x_105 : f32 = x_84.x_CameraFadeParams.x;
  u_xlat4 = (x_102 + -(x_105));
  let x_108 : f32 = u_xlat4;
  let x_111 : f32 = x_84.x_CameraFadeParams.y;
  u_xlat4 = (x_108 * x_111);
  let x_113 : f32 = u_xlat4;
  u_xlat4 = clamp(x_113, 0.0f, 1.0f);
  let x_122 : vec2<f32> = vs_TEXCOORD1;
  let x_123 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_122);
  u_xlat1 = x_123;
  let x_124 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = x_84.x_Color;
  u_xlat1 = (x_124 * x_128);
  let x_132 : f32 = u_xlat1.w;
  let x_135 : f32 = vs_COLOR0.w;
  u_xlat6 = (x_132 * x_135);
  let x_138 : f32 = u_xlat4;
  let x_139 : f32 = u_xlat6;
  u_xlat7 = (x_138 * x_139);
  let x_141 : f32 = u_xlat6;
  let x_142 : f32 = u_xlat4;
  let x_146 : f32 = x_84.x_DistortionBlend;
  u_xlat4 = ((x_141 * x_142) + -(x_146));
  let x_149 : f32 = u_xlat4;
  u_xlat4 = clamp(x_149, 0.0f, 1.0f);
  let x_151 : vec4<f32> = u_xlat0;
  let x_153 : f32 = u_xlat7;
  let x_157 : vec4<f32> = vs_TEXCOORD4;
  let x_159 : vec2<f32> = ((vec2<f32>(x_151.x, x_151.y) * vec2<f32>(x_153, x_153)) + vec2<f32>(x_157.x, x_157.y));
  let x_160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_159.x, x_159.y, x_160.z, x_160.w);
  let x_164 : f32 = u_xlat7;
  SV_Target0.w = x_164;
  let x_167 : vec4<f32> = u_xlat0;
  let x_169 : vec4<f32> = vs_TEXCOORD4;
  let x_171 : vec2<f32> = (vec2<f32>(x_167.x, x_167.y) / vec2<f32>(x_169.w, x_169.w));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_172.z, x_172.w);
  let x_179 : vec4<f32> = u_xlat0;
  let x_181 : vec4<f32> = textureSample(x_GrabTexture, sampler_GrabTexture, vec2<f32>(x_179.x, x_179.y));
  let x_182 : vec3<f32> = vec3<f32>(x_181.x, x_181.y, x_181.z);
  let x_183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_182.x, x_182.y, x_183.z, x_182.z);
  let x_185 : vec4<f32> = u_xlat1;
  let x_187 : vec4<f32> = vs_COLOR0;
  let x_190 : vec4<f32> = u_xlat0;
  let x_193 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.x, x_187.y, x_187.z)) + -(vec3<f32>(x_190.x, x_190.y, x_190.w)));
  let x_194 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : f32 = u_xlat4;
  let x_198 : vec4<f32> = u_xlat1;
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : vec3<f32> = ((vec3<f32>(x_196, x_196, x_196) * vec3<f32>(x_198.x, x_198.y, x_198.z)) + vec3<f32>(x_201.x, x_201.y, x_201.w));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : vec4<f32> = u_xlat0;
  let x_210 : vec4<f32> = x_84.unity_FogColor;
  let x_213 : vec3<f32> = (vec3<f32>(x_206.x, x_206.y, x_206.z) + -(vec3<f32>(x_210.x, x_210.y, x_210.z)));
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_217 : f32 = vs_TEXCOORD0;
  u_xlat6 = x_217;
  let x_218 : f32 = u_xlat6;
  u_xlat6 = clamp(x_218, 0.0f, 1.0f);
  let x_220 : f32 = u_xlat6;
  let x_222 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = x_84.unity_FogColor;
  let x_228 : vec3<f32> = ((vec3<f32>(x_220, x_220, x_220) * vec3<f32>(x_222.x, x_222.y, x_222.z)) + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat0;
  let x_233 : f32 = u_xlat6;
  let x_235 : vec3<f32> = (vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233, x_233, x_233));
  let x_236 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_244 : i32 = x_84.x_DstBlend;
  u_xlatb6 = (x_244 == 1i);
  let x_246 : bool = u_xlatb6;
  if (x_246) {
    let x_251 : vec4<f32> = u_xlat0;
    x_248 = vec3<f32>(x_251.x, x_251.y, x_251.z);
  } else {
    let x_254 : vec4<f32> = u_xlat1;
    x_248 = vec3<f32>(x_254.x, x_254.y, x_254.z);
  }
  let x_256 : vec3<f32> = x_248;
  let x_257 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec2<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

