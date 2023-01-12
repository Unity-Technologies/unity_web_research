struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
  x_Color : vec4<f32>,
  x_EmissionColor : vec3<f32>,
  @size(4)
  padding : u32,
  x_CameraFadeParams : vec4<f32>,
  x_DstBlend : i32,
}

var<private> vs_TEXCOORD0 : f32;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

@group(0) @binding(1) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlatb0 : bool;
  var x_161 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : f32 = vs_TEXCOORD0;
  let x_23 : f32 = x_17.x_ProjectionParams.y;
  u_xlat0 = (x_11 / x_23);
  let x_25 : f32 = u_xlat0;
  u_xlat0 = (-(x_25) + 1.0f);
  let x_29 : f32 = u_xlat0;
  let x_32 : f32 = x_17.x_ProjectionParams.z;
  u_xlat0 = (x_29 * x_32);
  let x_34 : f32 = u_xlat0;
  u_xlat0 = max(x_34, 0.0f);
  let x_37 : f32 = u_xlat0;
  let x_41 : f32 = x_17.unity_FogParams.x;
  u_xlat0 = (x_37 * x_41);
  let x_43 : f32 = u_xlat0;
  let x_44 : f32 = u_xlat0;
  u_xlat0 = (x_43 * -(x_44));
  let x_47 : f32 = u_xlat0;
  u_xlat0 = exp2(x_47);
  let x_64 : vec2<f32> = vs_TEXCOORD1;
  let x_65 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_64);
  u_xlat3 = vec3<f32>(x_65.x, x_65.y, x_65.z);
  let x_67 : vec3<f32> = u_xlat3;
  let x_70 : f32 = x_17.x_EmissionColor.x;
  let x_72 : f32 = x_17.x_EmissionColor.y;
  let x_74 : f32 = x_17.x_EmissionColor.z;
  u_xlat3 = (x_67 * vec3<f32>(x_70, x_72, x_74));
  let x_84 : vec2<f32> = vs_TEXCOORD1;
  let x_85 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_84);
  u_xlat1 = x_85;
  let x_86 : vec4<f32> = u_xlat1;
  let x_90 : vec4<f32> = x_17.x_Color;
  u_xlat1 = (x_86 * x_90);
  let x_92 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_92 * x_95);
  let x_100 : f32 = vs_TEXCOORD3.z;
  let x_103 : f32 = x_17.x_CameraFadeParams.x;
  u_xlat2 = (x_100 + -(x_103));
  let x_106 : f32 = u_xlat2;
  let x_108 : f32 = x_17.x_CameraFadeParams.y;
  u_xlat2 = (x_106 * x_108);
  let x_110 : f32 = u_xlat2;
  u_xlat2 = clamp(x_110, 0.0f, 1.0f);
  let x_112 : vec3<f32> = u_xlat3;
  let x_113 : f32 = u_xlat2;
  let x_116 : vec4<f32> = u_xlat1;
  u_xlat3 = ((x_112 * vec3<f32>(x_113, x_113, x_113)) + vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_123 : f32 = u_xlat1.w;
  let x_124 : f32 = u_xlat2;
  SV_Target0.w = (x_123 * x_124);
  let x_128 : vec3<f32> = u_xlat3;
  let x_131 : vec4<f32> = x_17.unity_FogColor;
  let x_134 : vec3<f32> = (x_128 + -(vec3<f32>(x_131.x, x_131.y, x_131.z)));
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_137 : vec3<f32> = u_xlat3;
  let x_138 : f32 = u_xlat0;
  u_xlat3 = (x_137 * vec3<f32>(x_138, x_138, x_138));
  let x_141 : f32 = u_xlat0;
  let x_143 : vec4<f32> = u_xlat1;
  let x_147 : vec4<f32> = x_17.unity_FogColor;
  let x_149 : vec3<f32> = ((vec3<f32>(x_141, x_141, x_141) * vec3<f32>(x_143.x, x_143.y, x_143.z)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_158 : i32 = x_17.x_DstBlend;
  u_xlatb0 = (x_158 == 1i);
  let x_160 : bool = u_xlatb0;
  if (x_160) {
    let x_164 : vec3<f32> = u_xlat3;
    x_161 = x_164;
  } else {
    let x_166 : vec4<f32> = u_xlat1;
    x_161 = vec3<f32>(x_166.x, x_166.y, x_166.z);
  }
  let x_168 : vec3<f32> = x_161;
  let x_169 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : f32, @location(2) vs_TEXCOORD1_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

