struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  x_ZBufferParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  x_Color : vec4<f32>,
  x_SoftParticleFadeParams : vec4<f32>,
  x_CameraFadeParams : vec4<f32>,
  x_DstBlend : i32,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb2 : vec2<bool>;
  var u_xlatb9 : bool;
  var u_xlat2 : vec2<f32>;
  var u_xlat9 : f32;
  var u_xlat4 : vec3<f32>;
  var x_240 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_32 : vec3<f32> = vs_TEXCOORD2;
  let x_34 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_32.x, x_32.y));
  u_xlat1 = x_34;
  let x_35 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_35) + x_37);
  let x_39 : vec3<f32> = vs_TEXCOORD2;
  let x_41 : vec4<f32> = u_xlat1;
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z) * x_41) + x_43);
  let x_45 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_49.x_Color;
  u_xlat0 = (x_45 * x_53);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (vec4<f32>(x_55.w, x_55.x, x_55.y, x_55.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_70 : vec4<f32> = x_49.x_SoftParticleFadeParams;
  let x_73 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_70.x, x_70.y, x_70.x, x_70.x));
  u_xlatb2 = vec2<bool>(x_73.x, x_73.y);
  let x_80 : bool = u_xlatb2.y;
  let x_83 : bool = u_xlatb2.x;
  u_xlatb9 = (x_80 | x_83);
  let x_85 : bool = u_xlatb9;
  if (x_85) {
    let x_91 : vec4<f32> = vs_TEXCOORD3;
    let x_93 : vec4<f32> = vs_TEXCOORD3;
    u_xlat2 = (vec2<f32>(x_91.x, x_91.y) / vec2<f32>(x_93.w, x_93.w));
    let x_103 : vec2<f32> = u_xlat2;
    let x_104 : vec4<f32> = textureSample(x_CameraDepthTexture, sampler_CameraDepthTexture, x_103);
    u_xlat9 = x_104.x;
    let x_110 : f32 = x_49.x_ZBufferParams.z;
    let x_111 : f32 = u_xlat9;
    let x_115 : f32 = x_49.x_ZBufferParams.w;
    u_xlat9 = ((x_110 * x_111) + x_115);
    let x_118 : f32 = u_xlat9;
    u_xlat9 = (1.0f / x_118);
    let x_120 : f32 = u_xlat9;
    let x_122 : f32 = x_49.x_SoftParticleFadeParams.x;
    u_xlat9 = (x_120 + -(x_122));
    let x_125 : f32 = u_xlat9;
    let x_128 : f32 = vs_TEXCOORD3.z;
    u_xlat9 = (x_125 + -(x_128));
    let x_131 : f32 = u_xlat9;
    let x_133 : f32 = x_49.x_SoftParticleFadeParams.y;
    u_xlat9 = (x_131 * x_133);
    let x_135 : f32 = u_xlat9;
    u_xlat9 = clamp(x_135, 0.0f, 1.0f);
    let x_137 : f32 = u_xlat9;
    let x_139 : f32 = u_xlat1.x;
    u_xlat1.x = (x_137 * x_139);
  }
  let x_143 : f32 = vs_TEXCOORD3.z;
  let x_146 : f32 = x_49.x_CameraFadeParams.x;
  u_xlat9 = (x_143 + -(x_146));
  let x_149 : f32 = u_xlat9;
  let x_151 : f32 = x_49.x_CameraFadeParams.y;
  u_xlat9 = (x_149 * x_151);
  let x_153 : f32 = u_xlat9;
  u_xlat9 = clamp(x_153, 0.0f, 1.0f);
  let x_157 : f32 = u_xlat9;
  let x_159 : f32 = u_xlat1.x;
  SV_Target0.w = (x_157 * x_159);
  let x_166 : i32 = x_49.x_DstBlend;
  u_xlatb9 = (x_166 == 1i);
  let x_169 : f32 = vs_TEXCOORD0;
  let x_172 : f32 = x_49.x_ProjectionParams.y;
  u_xlat1.x = (x_169 / x_172);
  let x_176 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_176) + 1.0f);
  let x_181 : f32 = u_xlat1.x;
  let x_183 : f32 = x_49.x_ProjectionParams.z;
  u_xlat1.x = (x_181 * x_183);
  let x_187 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_187, 0.0f);
  let x_191 : f32 = u_xlat1.x;
  let x_194 : f32 = x_49.unity_FogParams.x;
  u_xlat1.x = (x_191 * x_194);
  let x_198 : f32 = u_xlat1.x;
  let x_200 : f32 = u_xlat1.x;
  u_xlat1.x = (x_198 * -(x_200));
  let x_205 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_205);
  let x_210 : vec4<f32> = u_xlat1;
  let x_212 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_210.y, x_210.z, x_210.w) * vec3<f32>(x_212.x, x_212.x, x_212.x));
  let x_215 : vec4<f32> = u_xlat0;
  let x_217 : vec4<f32> = vs_COLOR0;
  let x_222 : vec4<f32> = x_49.unity_FogColor;
  let x_225 : vec3<f32> = ((vec3<f32>(x_215.x, x_215.y, x_215.z) * vec3<f32>(x_217.x, x_217.y, x_217.z)) + -(vec3<f32>(x_222.x, x_222.y, x_222.z)));
  let x_226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : vec4<f32> = u_xlat1;
  let x_230 : vec4<f32> = u_xlat0;
  let x_234 : vec4<f32> = x_49.unity_FogColor;
  let x_236 : vec3<f32> = ((vec3<f32>(x_228.x, x_228.x, x_228.x) * vec3<f32>(x_230.x, x_230.y, x_230.z)) + vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : bool = u_xlatb9;
  if (x_239) {
    let x_243 : vec3<f32> = u_xlat4;
    x_240 = x_243;
  } else {
    let x_245 : vec4<f32> = u_xlat0;
    x_240 = vec3<f32>(x_245.x, x_245.y, x_245.z);
  }
  let x_247 : vec3<f32> = x_240;
  let x_248 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec2<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

