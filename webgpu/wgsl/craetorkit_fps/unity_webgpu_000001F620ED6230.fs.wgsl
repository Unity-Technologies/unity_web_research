struct PGlobals {
  x_ZBufferParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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
  var x_207 : vec3<f32>;
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
  let x_170 : f32 = vs_TEXCOORD0;
  u_xlat1.x = x_170;
  let x_173 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_173, 0.0f, 1.0f);
  let x_178 : vec4<f32> = u_xlat1;
  let x_180 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_178.y, x_178.z, x_178.w) * vec3<f32>(x_180.x, x_180.x, x_180.x));
  let x_183 : vec4<f32> = u_xlat0;
  let x_185 : vec4<f32> = vs_COLOR0;
  let x_189 : vec4<f32> = x_49.unity_FogColor;
  let x_192 : vec3<f32> = ((vec3<f32>(x_183.x, x_183.y, x_183.z) * vec3<f32>(x_185.x, x_185.y, x_185.z)) + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat1;
  let x_197 : vec4<f32> = u_xlat0;
  let x_201 : vec4<f32> = x_49.unity_FogColor;
  let x_203 : vec3<f32> = ((vec3<f32>(x_195.x, x_195.x, x_195.x) * vec3<f32>(x_197.x, x_197.y, x_197.z)) + vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_206 : bool = u_xlatb9;
  if (x_206) {
    let x_210 : vec3<f32> = u_xlat4;
    x_207 = x_210;
  } else {
    let x_212 : vec4<f32> = u_xlat0;
    x_207 = vec3<f32>(x_212.x, x_212.y, x_212.z);
  }
  let x_214 : vec3<f32> = x_207;
  let x_215 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
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

