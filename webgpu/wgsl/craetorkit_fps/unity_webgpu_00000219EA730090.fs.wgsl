struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  @size(12)
  padding : u32,
  x_CameraFadeParams : vec4<f32>,
  x_DstBlend : i32,
  x_DistortionStrengthScaled : f32,
  x_DistortionBlend : f32,
}

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_54 : PGlobals;

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
  var x_279 : vec3<f32>;
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
  let x_49 : vec4<f32> = u_xlat0;
  let x_58 : f32 = x_54.x_BumpScale;
  let x_60 : vec2<f32> = (vec2<f32>(x_49.x, x_49.y) * vec2<f32>(x_58, x_58));
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_60.x, x_60.y, x_61.z, x_61.w);
  let x_64 : vec4<f32> = u_xlat0;
  let x_66 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec2<f32>(x_64.x, x_64.y), vec2<f32>(x_66.x, x_66.y));
  let x_69 : f32 = u_xlat6;
  u_xlat6 = min(x_69, 1.0f);
  let x_72 : f32 = u_xlat6;
  u_xlat6 = (-(x_72) + 1.0f);
  let x_75 : f32 = u_xlat6;
  u_xlat0.z = sqrt(x_75);
  let x_79 : vec4<f32> = u_xlat0;
  let x_81 : vec4<f32> = u_xlat0;
  u_xlat4 = dot(vec3<f32>(x_79.x, x_79.y, x_79.z), vec3<f32>(x_81.x, x_81.y, x_81.z));
  let x_84 : f32 = u_xlat4;
  u_xlat4 = inverseSqrt(x_84);
  let x_86 : f32 = u_xlat4;
  let x_88 : vec4<f32> = u_xlat0;
  let x_90 : vec2<f32> = (vec2<f32>(x_86, x_86) * vec2<f32>(x_88.x, x_88.y));
  let x_91 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_90.x, x_90.y, x_91.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat0;
  let x_97 : f32 = x_54.x_DistortionStrengthScaled;
  let x_99 : f32 = x_54.x_DistortionStrengthScaled;
  let x_100 : vec2<f32> = vec2<f32>(x_97, x_99);
  let x_104 : vec2<f32> = (vec2<f32>(x_93.x, x_93.y) * vec2<f32>(x_100.x, x_100.y));
  let x_105 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_111 : f32 = vs_TEXCOORD3.z;
  let x_114 : f32 = x_54.x_CameraFadeParams.x;
  u_xlat4 = (x_111 + -(x_114));
  let x_117 : f32 = u_xlat4;
  let x_120 : f32 = x_54.x_CameraFadeParams.y;
  u_xlat4 = (x_117 * x_120);
  let x_122 : f32 = u_xlat4;
  u_xlat4 = clamp(x_122, 0.0f, 1.0f);
  let x_131 : vec2<f32> = vs_TEXCOORD1;
  let x_132 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_131);
  u_xlat1 = x_132;
  let x_133 : vec4<f32> = u_xlat1;
  let x_137 : vec4<f32> = x_54.x_Color;
  u_xlat1 = (x_133 * x_137);
  let x_141 : f32 = u_xlat1.w;
  let x_144 : f32 = vs_COLOR0.w;
  u_xlat6 = (x_141 * x_144);
  let x_147 : f32 = u_xlat4;
  let x_148 : f32 = u_xlat6;
  u_xlat7 = (x_147 * x_148);
  let x_150 : f32 = u_xlat6;
  let x_151 : f32 = u_xlat4;
  let x_155 : f32 = x_54.x_DistortionBlend;
  u_xlat4 = ((x_150 * x_151) + -(x_155));
  let x_158 : f32 = u_xlat4;
  u_xlat4 = clamp(x_158, 0.0f, 1.0f);
  let x_160 : vec4<f32> = u_xlat0;
  let x_162 : f32 = u_xlat7;
  let x_166 : vec4<f32> = vs_TEXCOORD4;
  let x_168 : vec2<f32> = ((vec2<f32>(x_160.x, x_160.y) * vec2<f32>(x_162, x_162)) + vec2<f32>(x_166.x, x_166.y));
  let x_169 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_168.x, x_168.y, x_169.z, x_169.w);
  let x_173 : f32 = u_xlat7;
  SV_Target0.w = x_173;
  let x_176 : vec4<f32> = u_xlat0;
  let x_178 : vec4<f32> = vs_TEXCOORD4;
  let x_180 : vec2<f32> = (vec2<f32>(x_176.x, x_176.y) / vec2<f32>(x_178.w, x_178.w));
  let x_181 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_180.x, x_180.y, x_181.z, x_181.w);
  let x_188 : vec4<f32> = u_xlat0;
  let x_190 : vec4<f32> = textureSample(x_GrabTexture, sampler_GrabTexture, vec2<f32>(x_188.x, x_188.y));
  let x_191 : vec3<f32> = vec3<f32>(x_190.x, x_190.y, x_190.z);
  let x_192 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_191.x, x_191.y, x_192.z, x_191.z);
  let x_194 : vec4<f32> = u_xlat1;
  let x_196 : vec4<f32> = vs_COLOR0;
  let x_199 : vec4<f32> = u_xlat0;
  let x_202 : vec3<f32> = ((vec3<f32>(x_194.x, x_194.y, x_194.z) * vec3<f32>(x_196.x, x_196.y, x_196.z)) + -(vec3<f32>(x_199.x, x_199.y, x_199.w)));
  let x_203 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_205 : f32 = u_xlat4;
  let x_207 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat0;
  let x_212 : vec3<f32> = ((vec3<f32>(x_205, x_205, x_205) * vec3<f32>(x_207.x, x_207.y, x_207.z)) + vec3<f32>(x_210.x, x_210.y, x_210.w));
  let x_213 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_215 : vec4<f32> = u_xlat0;
  let x_219 : vec4<f32> = x_54.unity_FogColor;
  let x_222 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) + -(vec3<f32>(x_219.x, x_219.y, x_219.z)));
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : f32 = vs_TEXCOORD0;
  let x_229 : f32 = x_54.x_ProjectionParams.y;
  u_xlat6 = (x_226 / x_229);
  let x_231 : f32 = u_xlat6;
  u_xlat6 = (-(x_231) + 1.0f);
  let x_234 : f32 = u_xlat6;
  let x_236 : f32 = x_54.x_ProjectionParams.z;
  u_xlat6 = (x_234 * x_236);
  let x_238 : f32 = u_xlat6;
  u_xlat6 = max(x_238, 0.0f);
  let x_240 : f32 = u_xlat6;
  let x_243 : f32 = x_54.unity_FogParams.x;
  u_xlat6 = (x_240 * x_243);
  let x_245 : f32 = u_xlat6;
  let x_246 : f32 = u_xlat6;
  u_xlat6 = (x_245 * -(x_246));
  let x_249 : f32 = u_xlat6;
  u_xlat6 = exp2(x_249);
  let x_251 : f32 = u_xlat6;
  let x_253 : vec4<f32> = u_xlat1;
  let x_257 : vec4<f32> = x_54.unity_FogColor;
  let x_259 : vec3<f32> = ((vec3<f32>(x_251, x_251, x_251) * vec3<f32>(x_253.x, x_253.y, x_253.z)) + vec3<f32>(x_257.x, x_257.y, x_257.z));
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
  let x_262 : vec4<f32> = u_xlat0;
  let x_264 : f32 = u_xlat6;
  let x_266 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_264, x_264, x_264));
  let x_267 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_275 : i32 = x_54.x_DstBlend;
  u_xlatb6 = (x_275 == 1i);
  let x_277 : bool = u_xlatb6;
  if (x_277) {
    let x_282 : vec4<f32> = u_xlat0;
    x_279 = vec3<f32>(x_282.x, x_282.y, x_282.z);
  } else {
    let x_285 : vec4<f32> = u_xlat1;
    x_279 = vec3<f32>(x_285.x, x_285.y, x_285.z);
  }
  let x_287 : vec3<f32> = x_279;
  let x_288 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
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

