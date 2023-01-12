struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  @size(12)
  padding : u32,
  x_SoftParticleFadeParams : vec4<f32>,
  x_CameraFadeParams : vec4<f32>,
  x_DistortionStrengthScaled : f32,
  x_DistortionBlend : f32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_CameraDepthTexture : sampler;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(3) var x_GrabTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_GrabTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb4 : vec2<bool>;
  var u_xlatb9 : bool;
  var u_xlat4 : vec2<f32>;
  var u_xlat9 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat7 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = x_28.x_Color;
  u_xlat0 = (x_25 * x_33);
  let x_40 : f32 = u_xlat0.w;
  let x_45 : f32 = vs_COLOR0.w;
  u_xlat1 = (x_40 * x_45);
  let x_55 : vec4<f32> = x_28.x_SoftParticleFadeParams;
  let x_58 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_55.x, x_55.y, x_55.x, x_55.x));
  u_xlatb4 = vec2<bool>(x_58.x, x_58.y);
  let x_64 : bool = u_xlatb4.y;
  let x_67 : bool = u_xlatb4.x;
  u_xlatb9 = (x_64 | x_67);
  let x_69 : bool = u_xlatb9;
  if (x_69) {
    let x_75 : vec4<f32> = vs_TEXCOORD3;
    let x_77 : vec4<f32> = vs_TEXCOORD3;
    u_xlat4 = (vec2<f32>(x_75.x, x_75.y) / vec2<f32>(x_77.w, x_77.w));
    let x_86 : vec2<f32> = u_xlat4;
    let x_87 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_86);
    u_xlat9 = x_87.x;
    let x_93 : f32 = x_28.x_ZBufferParams.z;
    let x_94 : f32 = u_xlat9;
    let x_97 : f32 = x_28.x_ZBufferParams.w;
    u_xlat9 = ((x_93 * x_94) + x_97);
    let x_100 : f32 = u_xlat9;
    u_xlat9 = (1.0f / x_100);
    let x_102 : f32 = u_xlat9;
    let x_104 : f32 = x_28.x_SoftParticleFadeParams.x;
    u_xlat9 = (x_102 + -(x_104));
    let x_107 : f32 = u_xlat9;
    let x_109 : f32 = vs_TEXCOORD3.z;
    u_xlat9 = (x_107 + -(x_109));
    let x_112 : f32 = u_xlat9;
    let x_114 : f32 = x_28.x_SoftParticleFadeParams.y;
    u_xlat9 = (x_112 * x_114);
    let x_116 : f32 = u_xlat9;
    u_xlat9 = clamp(x_116, 0.0f, 1.0f);
    let x_118 : f32 = u_xlat9;
    let x_119 : f32 = u_xlat1;
    u_xlat1 = (x_118 * x_119);
  }
  let x_122 : f32 = vs_TEXCOORD3.z;
  let x_125 : f32 = x_28.x_CameraFadeParams.x;
  u_xlat9 = (x_122 + -(x_125));
  let x_128 : f32 = u_xlat9;
  let x_130 : f32 = x_28.x_CameraFadeParams.y;
  u_xlat9 = (x_128 * x_130);
  let x_132 : f32 = u_xlat9;
  u_xlat9 = clamp(x_132, 0.0f, 1.0f);
  let x_134 : f32 = u_xlat9;
  let x_135 : f32 = u_xlat1;
  u_xlat4.x = (x_134 * x_135);
  let x_146 : vec2<f32> = vs_TEXCOORD1;
  let x_147 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, x_146);
  u_xlat2 = vec3<f32>(x_147.x, x_147.y, x_147.w);
  let x_150 : f32 = u_xlat2.z;
  let x_152 : f32 = u_xlat2.x;
  u_xlat2.x = (x_150 * x_152);
  let x_156 : vec3<f32> = u_xlat2;
  u_xlat7 = ((vec2<f32>(x_156.x, x_156.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_164 : vec2<f32> = u_xlat7;
  let x_167 : f32 = x_28.x_BumpScale;
  let x_169 : vec2<f32> = (x_164 * vec2<f32>(x_167, x_167));
  let x_170 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_169.x, x_169.y, x_170.z);
  let x_172 : vec3<f32> = u_xlat2;
  let x_174 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(vec2<f32>(x_172.x, x_172.y), vec2<f32>(x_174.x, x_174.y));
  let x_179 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_179, 1.0f);
  let x_183 : f32 = u_xlat7.x;
  u_xlat7.x = (-(x_183) + 1.0f);
  let x_188 : f32 = u_xlat7.x;
  u_xlat2.z = sqrt(x_188);
  let x_191 : vec3<f32> = u_xlat2;
  let x_192 : vec3<f32> = u_xlat2;
  u_xlat7.x = dot(x_191, x_192);
  let x_196 : f32 = u_xlat7.x;
  u_xlat7.x = inverseSqrt(x_196);
  let x_199 : vec2<f32> = u_xlat7;
  let x_201 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec2<f32>(x_199.x, x_199.x) * vec2<f32>(x_201.x, x_201.y));
  let x_204 : vec2<f32> = u_xlat7;
  let x_207 : f32 = x_28.x_DistortionStrengthScaled;
  let x_209 : f32 = x_28.x_DistortionStrengthScaled;
  let x_210 : vec2<f32> = vec2<f32>(x_207, x_209);
  u_xlat7 = (x_204 * vec2<f32>(x_210.x, x_210.y));
  let x_215 : vec2<f32> = u_xlat7;
  let x_216 : vec2<f32> = u_xlat4;
  let x_220 : vec4<f32> = vs_TEXCOORD4;
  u_xlat7 = ((x_215 * vec2<f32>(x_216.x, x_216.x)) + vec2<f32>(x_220.x, x_220.y));
  let x_223 : vec2<f32> = u_xlat7;
  let x_224 : vec4<f32> = vs_TEXCOORD4;
  u_xlat7 = (x_223 / vec2<f32>(x_224.w, x_224.w));
  let x_232 : vec2<f32> = u_xlat7;
  let x_233 : vec4<f32> = textureSample(x_GrabTexture, sampler_GrabTexture, x_232);
  u_xlat2 = vec3<f32>(x_233.x, x_233.y, x_233.z);
  let x_235 : f32 = u_xlat1;
  let x_236 : f32 = u_xlat9;
  let x_240 : f32 = x_28.x_DistortionBlend;
  u_xlat9 = ((x_235 * x_236) + -(x_240));
  let x_243 : f32 = u_xlat9;
  u_xlat9 = clamp(x_243, 0.0f, 1.0f);
  let x_245 : vec4<f32> = u_xlat0;
  let x_247 : vec4<f32> = vs_COLOR0;
  let x_250 : vec3<f32> = u_xlat2;
  let x_252 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.x, x_247.y, x_247.z)) + -(x_250));
  let x_253 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_257 : f32 = u_xlat9;
  let x_259 : vec4<f32> = u_xlat0;
  let x_262 : vec3<f32> = u_xlat2;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257, x_257, x_257) * vec3<f32>(x_259.x, x_259.y, x_259.z)) + x_262);
  let x_264 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_267 : f32 = u_xlat4.x;
  SV_Target0.w = x_267;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

